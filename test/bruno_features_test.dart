import 'package:flutter_test/flutter_test.dart'; // Flutter Test-Framework für unit tests
import 'package:spieleabend/api/prisma_client.dart'; // Prisma Client für DB-Zugriffe
import 'package:spieleabend/features/bruno/evening_rating/bloc/bloc.dart'; // BLoC für das Rating-Feature
import 'package:spieleabend/features/bruno/quick_message/bloc/bloc.dart'; // BLoC für das Quick-Message-Feature

import '_helpers.dart'; // Test-Hilfsfunktionen (z.B. in-memory DB Initialisierung)

/// Hilfsfunktion zum Aufsetzen einer isolierten Test-Umgebung.
/// Erstellt eine frische In-Memory Datenbank, einen User und eine Gruppe.
Future<({PrismaClient db, Group group, User me})> _setup() async {
  // Öffnet eine neue SQLite-Instanz im Arbeitsspeicher
  final db = await openInMemoryPrismaClient();

  // Erzeugt einen Zeitstempel-Tag, um Namenskollisionen in der DB zu vermeiden
  final tag = 'b${DateTime.now().microsecondsSinceEpoch}';

  // Erstellt einen Test-Nutzer "Bruno"
  final me = await db.user.create(
    data: CreateUserInput(username: 'bruno_$tag', displayName: 'Bruno'),
  );

  // Erstellt eine Gruppe, die Bruno gehört
  final group = await db.group.create(
    data: CreateGroupInput(name: 'G_$tag', createdById: me.id),
  );

  // Fügt Bruno der Gruppe als Mitglied hinzu (wichtig für die Rotation/Berechtigungen)
  await db.groupMembership.create(
    data: CreateGroupMembershipInput(
      groupId: group.id,
      userId: me.id,
      rotationOrder: 1,
    ),
  );
  return (db: db, group: group, me: me);
}

void main() {
  // Initialisiert die SQLite FFI für Unit Tests (nötig auf Desktop/Server-VM)
  initSqfliteFfi();

  group('EveningRatingBloc', () {
    test('lädt nur beendete Termine zur Bewertung', () async {
      // Setup der Testdaten
      final s = await _setup();

      // 1. Erstellung eines offenen Termins in der Zukunft.
      // Dieser darf NICHT zur Bewertung herangezogen werden.
      await s.db.gameSession.create(
        data: CreateGameSessionInput(
          groupId: s.group.id,
          scheduledAt: DateTime.utc(2030, 1, 1),
          location: 'Geplant',
          hostId: s.me.id,
          finished: false,
        ),
      );

      // Initialisierung des Blocs
      final bloc = EveningRatingBloc(db: s.db, currentUserId: s.me.id);

      // Anforderung zum Laden der Daten senden
      bloc.add(EveningRatingLoadRequested(s.group.id));

      // Warten auf den Zustand 'Loaded' und prüfen, ob die Session null ist (da keine beendet)
      final st1 =
          await bloc.stream.firstWhere((st) => st is EveningRatingLoaded)
              as EveningRatingLoaded;
      expect(
        st1.session,
        isNull,
        reason: 'Ein offener Termin darf nicht bewertbar sein.',
      );

      // 2. Erstellung eines beendeten Termins in der Vergangenheit.
      // Dieser muss nun vom Bloc gefunden werden.
      final finished = await s.db.gameSession.create(
        data: CreateGameSessionInput(
          groupId: s.group.id,
          scheduledAt: DateTime.utc(2024, 1, 1),
          location: 'Vergangenheit',
          hostId: s.me.id,
          finished: true,
        ),
      );

      // Erneutes Laden anstoßen
      bloc.add(EveningRatingLoadRequested(s.group.id));

      // Prüfen, ob jetzt die korrekte (beendete) Session geladen wurde
      final st2 =
          await bloc.stream.firstWhere(
                (st) =>
                    st is EveningRatingLoaded && st.session?.id == finished.id,
              )
              as EveningRatingLoaded;
      expect(st2.session?.location, 'Vergangenheit');

      await bloc.close(); // Ressourcen freigeben
    });

    test(
      'Speichern berechnet den Durchschnitt korrekt in der Historie',
      () async {
        // Setup: Eine abgeschlossene Session erstellen
        final s = await _setup();
        await s.db.gameSession.create(
          data: CreateGameSessionInput(
            groupId: s.group.id,
            scheduledAt: DateTime.utc(2024, 1, 1),
            location: 'Spieleabend 1',
            hostId: s.me.id,
            finished: true,
          ),
        );

        final bloc = EveningRatingBloc(db: s.db, currentUserId: s.me.id);

        // Initial laden
        bloc.add(EveningRatingLoadRequested(s.group.id));
        await bloc.stream.firstWhere((st) => st is EveningRatingLoaded);

        // Scores im Bloc-State ändern (Standardwerte sind alle 4).
        // Wir setzen die Gastgeber-Bewertung auf 5.
        bloc.add(const EveningRatingHostScoreChanged(5));

        // Speicher-Event senden (schreibt in die DB und berechnet Historie neu)
        bloc.add(const EveningRatingSaveRequested());

        // Auf Erfolg warten
        final saved =
            await bloc.stream.firstWhere(
                  (st) =>
                      st is EveningRatingLoaded && st.existingRating != null,
                )
                as EveningRatingLoaded;

        // Durchschnittsberechnung validieren: (Host: 5 + Food: 4 + Evening: 4) / 3 = 4.33
        expect(saved.history.first.avg, closeTo(4.33, 0.01));
        expect(saved.infoMessage, contains('gespeichert'));

        await bloc.close(); // Bloc sauber schließen
      },
    );
  });

  group('QuickMessageBloc', () {
    test('findet den nächsten anstehenden Termin für Nachrichten', () async {
      final s = await _setup();
      // Termin in der Zukunft erstellen, der noch nicht beendet ist
      final next = await s.db.gameSession.create(
        data: CreateGameSessionInput(
          groupId: s.group.id,
          scheduledAt: DateTime.utc(2030, 5, 20),
          location: 'Zukunft',
          hostId: s.me.id,
          finished: false,
        ),
      );

      final bloc = QuickMessageBloc(
        db: s.db,
        currentDisplayName: s.me.displayName,
      );

      // Daten laden (Bloc sucht die nächste offene Session)
      bloc.add(QuickMessageLoadRequested(s.group.id));

      final st =
          await bloc.stream.firstWhere((st) => st is QuickMessageLoaded)
              as QuickMessageLoaded;
      expect(
        st.session?.id,
        next.id,
        reason: 'QuickMessage muss den nächsten offenen Termin finden.',
      );

      // Sende-Test: Simuliert das Abschicken einer Nachricht
      bloc.add(const QuickMessageSendRequested('Bin gleich da!'));

      // Prüfen, ob die Nachricht im State korrekt formatiert ankommt
      final sent =
          await bloc.stream.firstWhere(
                (st) => st is QuickMessageLoaded && st.messageSent,
              )
              as QuickMessageLoaded;
      expect(sent.infoMessage, contains('Bruno: Bin gleich da!'));

      await bloc.close(); // Bloc schließen
    });
  });
}

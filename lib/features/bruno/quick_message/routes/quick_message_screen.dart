// Feature 6 (Bruno): Schnelle Nachricht an alle Spieler:innen.
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../api/prisma_client.dart';
import '../../../../app/error_handler.dart';
import '../../../../components/feature_page.dart';
import '../../../auth/bloc.dart';
import '../../../groups/bloc.dart';

// Vordefinierte Texte für den schnellen Versand ohne Tippen.
const _quickReplies = [
  'Ich verspäte mich um 10 Minuten.',
  'Ich verspäte mich um 30 Minuten.',
  'Ich kann heute leider nicht kommen.',
  'Bin schon unterwegs!',
  'Bin gleich da!',
];

/// Screen zum Versenden von Kurzmitteilungen an die Gruppe.
class QuickMessageScreen extends StatefulWidget {
  const QuickMessageScreen({super.key});

  @override
  State<QuickMessageScreen> createState() => _QuickMessageScreenState();
}

class _QuickMessageScreenState extends State<QuickMessageScreen> {
  // Controller für das manuelle Eingabefeld.
  final TextEditingController _customMessageController = TextEditingController();

  @override
  void dispose() {
    // Sauberes Löschen des Controllers beim Verlassen des Screens.
    _customMessageController.dispose();
    super.dispose();
  }

  // Hilfsfunktion zur Darstellung des Datums (DD.MM.YYYY).
  String _formatDate(DateTime date) {
    return "${date.day}.${date.month}.${date.year}";
  }

  /// Simuliert den Versand einer Push-Benachrichtigung.
  Future<void> _sendPushNotification(BuildContext context, String message) async {
    final user = context.read<AuthBloc>().state.currentUser;
    if (user == null) return;

    // Fügt den Namen des Absenders vor die Nachricht.
    final fullMessage = "${user.displayName}: $message";

    return guard(context, () async {
      // Simulation einer Netzwerkverzögerung.
      // welcher dann via Firebase Cloud Messaging (FCM) Push-Benachrichtigungen
      // an alle Gruppenmitglieder verschickt.
      await Future.delayed(const Duration(milliseconds: 500));

      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Push-Nachricht gesendet: $fullMessage')),
        );
        // Eingabefeld nach erfolgreichem "Senden" leeren.
        _customMessageController.clear();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Zugriff auf DB-Client (Datenbank-Instanz) und die aktuell aktive Gruppe aus dem BLoC-Provider
    final db = context.read<PrismaClient>();
    final activeGroup = context.read<GroupsBloc>().state.activeGroup;

    // Fehlermeldung, falls keine Gruppe im GroupsBloc aktiv ist.
    if (activeGroup == null) {
      return const FeaturePage(
        title: 'Schnellnachricht',
        icon: Icons.flash_on_outlined,
        child: Center(child: Text('Keine aktive Gruppe ausgewählt.')),
      );
    }

    return FeaturePage(
      title: 'Schnellnachricht',
      icon: Icons.flash_on_outlined,
      subtitle: 'Sende allen anderen Spieler:innen eine kurze Notiz.',
      // Lädt die nächste anstehende Session, um Kontext für die Nachricht zu geben.
      child: FutureBuilder(
        future: db.gameSession.findFirst(
          where: GameSessionWhereInput(
            groupId: StringFilter(equals: activeGroup.id),
            // Nur noch nicht beendete Termine sind für Schnellnachrichten relevant.
            finished: const BooleanFilter(equals: false),
          ),
          orderBy: const GameSessionOrderByInput(scheduledAt: SortOrder.asc),
        ),
        builder: (context, snapshot) {
          // Lade-Indikator anzeigen, während auf die Datenbank gewartet wird:
          // Zeigt einen Ladekringel, solange die DB-Abfrage läuft.
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          final session = snapshot.data;

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Sektion 1: Info-Karte zum nächsten Termin.
                if (session != null) ...[
                  SectionCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Anstehender Termin: ${_formatDate(session.scheduledAt)}',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Ort: ${session.location}', 
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                ],

                // Sektion 2: Liste der klickbaren Schnellantworten.
                const Text(
                  'Schnellantworten:', 
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                for (final preset in _quickReplies) ...[
                  SectionCard(
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const Icon(Icons.bolt_outlined),
                      title: Text(preset),
                      trailing: const Icon(Icons.send_outlined),
                      // Direktes Senden beim Antippen eines Eintrags.
                      onTap: () => _sendPushNotification(context, preset),
                    ),
                  ),
                  const SizedBox(height: 12),
                ],

                const SizedBox(height: 8),
                const Divider(),
                const SizedBox(height: 8),

                // Sektion 3: Freitextfeld für individuelle Nachrichten.
                const Text(
                  'Eigene Nachricht verfassen:', 
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                SectionCard(
                  child: TextField(
                    controller: _customMessageController,
                    decoration: const InputDecoration(
                      hintText: 'Eigene Nachricht eingeben…',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Sektion 4: Button zum Versenden des manuell getippten Textes.
                FilledButton.icon(
                  icon: const Icon(Icons.send),
                  label: const Text('An alle senden'),
                  onPressed: () {
                    final text = _customMessageController.text.trim();
                    if (text.isNotEmpty) {
                      _sendPushNotification(context, text);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Bitte gib zuerst einen Text ein.')),
                      );
                    }
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

// Absicherung: Falls die SectionCard Komponente in diesem Ordner nicht (mehr) importiert ist, 
// wird diese hier als Fallback eingefügt
class SectionCard extends StatelessWidget {
  final Widget child;
  const SectionCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: child,
      ),
    );
  }
}
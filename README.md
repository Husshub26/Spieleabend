# Spieleabend

App für das Organisieren von Spieleabenden.

# Important
- Commit Messages MUST follow the structure of [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) ... you can use the supplied VSCode extension (`Ctrl + Shift +  P`, `> Conventional Commits`) to have a guided experience.
- Install Docker
- When opening the folder with VSCode, press `Ctrl + Shift + P` and select `> Dev Container: `

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Aufgabenstellung

- Als Spieler:in möchte ich immer wissen, wann und wo der nächste Spieltermin stattfindet, um ihn nicht zu verpassen.
- Als Spieler:in möchte ich, dass sich die Gruppe immer turnusmäßig bei einem:einer anderen Spieler:in zu Hause trifft, damit die mit der Einladung verbundenen Aufwände gleich verteilt sind.
- Als Spieler:in möchte ich ein oder mehrere Spiele vorschlagen können, um den Spieleabend mitgestalten zu können.

- Als Spieler:in möchte ich im Vorfeld des Termins über die vorgeschlagegnen Spiele abstimmen können, um den Spieleabend mitgestalten zu können.
- Als Spieler:in möchte ich den:die Gastgeber:in, das Essen und den Abend allgemein im Anschluss an den Termin bewerten können.
- Als Spieler:in möchte ich allen anderen Spieler:innen schnell eine Nachricht zukommen lassen können, um mich entschuldigen zu können, falls ich mich verspäten sollte.
  
- Als Spieler:in möchte ich in Vorbereitung des Fast-Food-bestellprozesses rechtzeitig daran erinnert werden, meine Lieblingsessenrichtungen zu wählen.
- Als Gastgeber:in möchte ich rechtzeitig über die mehrheitlich gewünschte Essensrichtung informiert werden, um einen passenden lokalen Lieferdienst auszusuchen.
- Als Spieler:in möchte ich rechtzeitig das Menü des ausgewählten Lieferdienstes sehen können, um rechtzeitig meine Bestellung an den:die Gastgeber übermitteln zu können.

### Development
- Run in browser `flutter run -d web-server --web-port 6333`
- Run on android device (Wireless Debugging REQUIRED for devcontainer, Android 11+) `adb pair <device_ip>:<port> <pair_code>` `adb connect <device_ip>` ... now you can run `flutter run -d <device_name>` which opens the project on your phone in debug build.
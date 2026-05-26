# Spieleabend

App für das Organisieren von Spieleabenden.

# Important
- Commit Messages MUST follow the structure of [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) ... you can use the supplied VSCode extension (`Ctrl + Shift +  P`, `> Conventional Commits`) to have a guided experience.
- Install [Docker Desktop](https://www.docker.com/products/docker-desktop/)
- When opening the folder with VSCode, press `Ctrl + Shift + P` and select `> Dev Container: Reopen in Container`

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

### Development
- Run in browser `flutter run -d web-server --web-port 6333`
- Run on android device (Wireless Debugging REQUIRED for devcontainer, Android 11+) `adb pair <device_ip>:<port> <pair_code>` `adb connect <device_ip>` ... now you can run `flutter run -d <device_name>` which opens the project on your phone in debug build.
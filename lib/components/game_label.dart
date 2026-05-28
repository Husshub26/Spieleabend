import 'package:spieleabend/models/game_type.dart';

/// Human-friendly German label for the `GameType` enum.
extension GameTypeLabel on GameType {
  String get label => switch (this) {
    //GameType.NAME => GameType.LABEL
    GameType.chess => 'Schach',
    GameType.backgammon => 'Backgammon',
    GameType.scrabble => 'Scrabble',
    GameType.monopoly => 'Monopoly',
    GameType.connect4 => 'Vier gewinnt',
    GameType.ludo => 'Mensch ärgere dich nicht',
    GameType.draughts => 'Dame',
  };
}

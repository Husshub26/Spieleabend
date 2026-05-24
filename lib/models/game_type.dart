import 'package:freezed_annotation/freezed_annotation.dart';

enum GameType {
  @JsonValue('chess')
  chess,
  @JsonValue('backgammon')
  backgammon,
  @JsonValue('scrabble')
  scrabble,
  @JsonValue('monopoly')
  monopoly,
  @JsonValue('connect 4')
  connect4,
  @JsonValue('ludo')
  ludo,
  @JsonValue('draughts')
  draughts;

  String toJson() {
    return switch (this) {
      GameType.chess => 'chess',
      GameType.backgammon => 'backgammon',
      GameType.scrabble => 'scrabble',
      GameType.monopoly => 'monopoly',
      GameType.connect4 => 'connect 4',
      GameType.ludo => 'ludo',
      GameType.draughts => 'draughts',
    };
  }
}

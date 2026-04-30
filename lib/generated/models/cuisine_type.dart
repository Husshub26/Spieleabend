import 'package:freezed_annotation/freezed_annotation.dart';

enum CuisineType {
  @JsonValue('italian')
  italian,
  @JsonValue('asian')
  asian,
  @JsonValue('burger')
  burger,
  @JsonValue('mexican')
  mexican,
  @JsonValue('indian')
  indian,
  @JsonValue('vegan')
  vegan,
  @JsonValue('sushi')
  sushi;

  String toJson() {
    return switch (this) {
      CuisineType.italian => 'italian',
      CuisineType.asian => 'asian',
      CuisineType.burger => 'burger',
      CuisineType.mexican => 'mexican',
      CuisineType.indian => 'indian',
      CuisineType.vegan => 'vegan',
      CuisineType.sushi => 'sushi',
    };
  }
}

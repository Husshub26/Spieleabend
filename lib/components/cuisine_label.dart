import '../api/prisma_client.dart';

/// Human-friendly German label for the generated `CuisineType` enum.
extension CuisineTypeLabel on CuisineType {
  String get label => switch (this) {
    CuisineType.italian => 'Italienisch',
    CuisineType.asian => 'Asiatisch',
    CuisineType.burger => 'Burger',
    CuisineType.mexican => 'Mexikanisch',
    CuisineType.indian => 'Indisch',
    CuisineType.vegan => 'Vegan',
    CuisineType.sushi => 'Sushi',
  };
}

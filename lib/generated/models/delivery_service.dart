import 'package:freezed_annotation/freezed_annotation.dart';
import '../filters.dart';
import 'cuisine_type.dart';
import 'menu_item.dart';
part 'delivery_service.freezed.dart';

@freezed
class DeliveryService with _$DeliveryService {
  const DeliveryService._();

  const factory DeliveryService({
    required String id,
    required String name,
    required CuisineType cuisine,
    @JsonKey(includeFromJson: false, includeToJson: false) List<MenuItem>? menu,
  }) = _DeliveryService;

  factory DeliveryService.fromJson(Map<String, dynamic> json) {
    return DeliveryService(
      id: json['id'] as String,
      name: json['name'] as String,
      cuisine: _$CuisineTypeFromJson(json['cuisine'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'cuisine': _$CuisineTypeToJson(cuisine),
    };
  }
}

/// Input for creating a new DeliveryService
@freezed
class CreateDeliveryServiceInput with _$CreateDeliveryServiceInput {
  const CreateDeliveryServiceInput._();

  const factory CreateDeliveryServiceInput({
    required String name,
    required CuisineType cuisine,
  }) = _CreateDeliveryServiceInput;

  factory CreateDeliveryServiceInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('CreateDeliveryServiceInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'cuisine': _$CuisineTypeToJson(cuisine),
    };
  }
}

/// Input for updating an existing DeliveryService
@freezed
class UpdateDeliveryServiceInput with _$UpdateDeliveryServiceInput {
  const UpdateDeliveryServiceInput._();

  const factory UpdateDeliveryServiceInput({
    String? name,
    CuisineType? cuisine,
  }) = _UpdateDeliveryServiceInput;

  factory UpdateDeliveryServiceInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('UpdateDeliveryServiceInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (name != null) 'name': name,
      if (cuisine != null) 'cuisine': _$CuisineTypeToJson(cuisine),
    };
  }
}

@freezed
class DeliveryServiceWhereUniqueInput with _$DeliveryServiceWhereUniqueInput {
  const DeliveryServiceWhereUniqueInput._();

  const factory DeliveryServiceWhereUniqueInput({String? id}) =
      _DeliveryServiceWhereUniqueInput;

  factory DeliveryServiceWhereUniqueInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError(
      'DeliveryServiceWhereUniqueInput.fromJson not needed',
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{if (id != null) 'id': id};
  }
}

@freezed
class DeliveryServiceWhereInput with _$DeliveryServiceWhereInput {
  const DeliveryServiceWhereInput._();

  const factory DeliveryServiceWhereInput({
    StringFilter? id,
    StringFilter? name,
    CuisineTypeFilter? cuisine,
    MenuItemListRelationFilter? menu,
    List<DeliveryServiceWhereInput>? AND,
    List<DeliveryServiceWhereInput>? OR,
    DeliveryServiceWhereInput? NOT,
  }) = _DeliveryServiceWhereInput;

  factory DeliveryServiceWhereInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('DeliveryServiceWhereInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) 'id': id!.toJson(),
      if (name != null) 'name': name!.toJson(),
      if (cuisine != null) 'cuisine': cuisine!.toJson(),
      if (menu != null) 'menu': menu!.toJson(),
      if (AND != null) 'AND': AND!.map((e) => e.toJson()).toList(),
      if (OR != null) 'OR': OR!.map((e) => e.toJson()).toList(),
      if (NOT != null) 'NOT': NOT!.toJson(),
    };
  }
}

@freezed
class DeliveryServiceListRelationFilter
    with _$DeliveryServiceListRelationFilter {
  const DeliveryServiceListRelationFilter._();

  const factory DeliveryServiceListRelationFilter({
    DeliveryServiceWhereInput? some,
    DeliveryServiceWhereInput? every,
    DeliveryServiceWhereInput? none,
  }) = _DeliveryServiceListRelationFilter;

  factory DeliveryServiceListRelationFilter.fromJson(
    Map<String, dynamic> json,
  ) {
    throw UnimplementedError(
      'DeliveryServiceListRelationFilter.fromJson not needed',
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (some != null) 'some': some!.toJson(),
      if (every != null) 'every': every!.toJson(),
      if (none != null) 'none': none!.toJson(),
    };
  }
}

@freezed
class DeliveryServiceRelationFilter with _$DeliveryServiceRelationFilter {
  const DeliveryServiceRelationFilter._();

  const factory DeliveryServiceRelationFilter({
    @JsonKey(name: 'is') DeliveryServiceWhereInput? is_,
    DeliveryServiceWhereInput? isNot,
  }) = _DeliveryServiceRelationFilter;

  factory DeliveryServiceRelationFilter.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError(
      'DeliveryServiceRelationFilter.fromJson not needed',
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (is_ != null) 'is': is_!.toJson(),
      if (isNot != null) 'isNot': isNot!.toJson(),
    };
  }
}

@freezed
class DeliveryServiceOrderByInput with _$DeliveryServiceOrderByInput {
  const DeliveryServiceOrderByInput._();

  const factory DeliveryServiceOrderByInput({SortOrder? id, SortOrder? name}) =
      _DeliveryServiceOrderByInput;

  factory DeliveryServiceOrderByInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('DeliveryServiceOrderByInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) 'id': id!.name,
      if (name != null) 'name': name!.name,
    };
  }
}

CuisineType _$CuisineTypeFromJson(String value) {
  return switch (value) {
    'italian' => CuisineType.italian,
    'asian' => CuisineType.asian,
    'burger' => CuisineType.burger,
    'mexican' => CuisineType.mexican,
    'indian' => CuisineType.indian,
    'vegan' => CuisineType.vegan,
    'sushi' => CuisineType.sushi,
    _ => throw ArgumentError('Unknown CuisineType: $value'),
  };
}

String? _$CuisineTypeToJson(CuisineType? value) {
  if (value == null) return null;
  return switch (value) {
    CuisineType.italian => 'italian',
    CuisineType.asian => 'asian',
    CuisineType.burger => 'burger',
    CuisineType.mexican => 'mexican',
    CuisineType.indian => 'indian',
    CuisineType.vegan => 'vegan',
    CuisineType.sushi => 'sushi',
  };
}

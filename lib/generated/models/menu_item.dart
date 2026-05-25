import 'package:freezed_annotation/freezed_annotation.dart';
import '../filters.dart';
import 'delivery_service.dart';
part 'menu_item.freezed.dart';

@freezed
class MenuItem with _$MenuItem {
  const MenuItem._();

  const factory MenuItem({
    required String id,
    required String deliveryServiceId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    DeliveryService? deliveryService,
    required String name,
    required String description,
    required double priceEur,
  }) = _MenuItem;

  factory MenuItem.fromJson(Map<String, dynamic> json) {
    return MenuItem(
      id: json['id'] as String,
      deliveryServiceId: json['deliveryServiceId'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      priceEur: (json['priceEur'] as num).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'deliveryServiceId': deliveryServiceId,
      'name': name,
      'description': description,
      'priceEur': priceEur,
    };
  }
}

/// Input for creating a new MenuItem
@freezed
class CreateMenuItemInput with _$CreateMenuItemInput {
  const CreateMenuItemInput._();

  const factory CreateMenuItemInput({
    required String deliveryServiceId,
    required String name,
    required String description,
    required double priceEur,
  }) = _CreateMenuItemInput;

  factory CreateMenuItemInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('CreateMenuItemInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'deliveryServiceId': deliveryServiceId,
      'name': name,
      'description': description,
      'priceEur': priceEur,
    };
  }
}

/// Input for updating an existing MenuItem
@freezed
class UpdateMenuItemInput with _$UpdateMenuItemInput {
  const UpdateMenuItemInput._();

  const factory UpdateMenuItemInput({
    String? deliveryServiceId,
    String? name,
    String? description,
    double? priceEur,
  }) = _UpdateMenuItemInput;

  factory UpdateMenuItemInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('UpdateMenuItemInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (deliveryServiceId != null) 'deliveryServiceId': deliveryServiceId,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (priceEur != null) 'priceEur': priceEur,
    };
  }
}

@freezed
class MenuItemWhereUniqueInput with _$MenuItemWhereUniqueInput {
  const MenuItemWhereUniqueInput._();

  const factory MenuItemWhereUniqueInput({String? id}) =
      _MenuItemWhereUniqueInput;

  factory MenuItemWhereUniqueInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('MenuItemWhereUniqueInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{if (id != null) 'id': id};
  }
}

@freezed
class MenuItemWhereInput with _$MenuItemWhereInput {
  const MenuItemWhereInput._();

  const factory MenuItemWhereInput({
    StringFilter? id,
    StringFilter? deliveryServiceId,
    DeliveryServiceRelationFilter? deliveryService,
    StringFilter? name,
    StringFilter? description,
    FloatFilter? priceEur,
    List<MenuItemWhereInput>? AND,
    List<MenuItemWhereInput>? OR,
    MenuItemWhereInput? NOT,
  }) = _MenuItemWhereInput;

  factory MenuItemWhereInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('MenuItemWhereInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) 'id': id!.toJson(),
      if (deliveryServiceId != null)
        'deliveryServiceId': deliveryServiceId!.toJson(),
      if (deliveryService != null) 'deliveryService': deliveryService!.toJson(),
      if (name != null) 'name': name!.toJson(),
      if (description != null) 'description': description!.toJson(),
      if (priceEur != null) 'priceEur': priceEur!.toJson(),
      if (AND != null) 'AND': AND!.map((e) => e.toJson()).toList(),
      if (OR != null) 'OR': OR!.map((e) => e.toJson()).toList(),
      if (NOT != null) 'NOT': NOT!.toJson(),
    };
  }
}

@freezed
class MenuItemListRelationFilter with _$MenuItemListRelationFilter {
  const MenuItemListRelationFilter._();

  const factory MenuItemListRelationFilter({
    MenuItemWhereInput? some,
    MenuItemWhereInput? every,
    MenuItemWhereInput? none,
  }) = _MenuItemListRelationFilter;

  factory MenuItemListRelationFilter.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('MenuItemListRelationFilter.fromJson not needed');
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
class MenuItemRelationFilter with _$MenuItemRelationFilter {
  const MenuItemRelationFilter._();

  const factory MenuItemRelationFilter({
    @JsonKey(name: 'is') MenuItemWhereInput? is_,
    MenuItemWhereInput? isNot,
  }) = _MenuItemRelationFilter;

  factory MenuItemRelationFilter.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('MenuItemRelationFilter.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (is_ != null) 'is': is_!.toJson(),
      if (isNot != null) 'isNot': isNot!.toJson(),
    };
  }
}

@freezed
class MenuItemOrderByInput with _$MenuItemOrderByInput {
  const MenuItemOrderByInput._();

  const factory MenuItemOrderByInput({
    SortOrder? id,
    SortOrder? deliveryServiceId,
    SortOrder? name,
    SortOrder? description,
    SortOrder? priceEur,
  }) = _MenuItemOrderByInput;

  factory MenuItemOrderByInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('MenuItemOrderByInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) 'id': id!.name,
      if (deliveryServiceId != null)
        'deliveryServiceId': deliveryServiceId!.name,
      if (name != null) 'name': name!.name,
      if (description != null) 'description': description!.name,
      if (priceEur != null) 'priceEur': priceEur!.name,
    };
  }
}

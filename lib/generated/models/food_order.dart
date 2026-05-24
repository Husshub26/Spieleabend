import 'package:freezed_annotation/freezed_annotation.dart';
import '../filters.dart';
import 'game_session.dart';
import 'user.dart';
part 'food_order.freezed.dart';

@freezed
class FoodOrder with _$FoodOrder {
  const FoodOrder._();

  const factory FoodOrder({
    required String id,
    required String sessionId,
    @JsonKey(includeFromJson: false, includeToJson: false) GameSession? session,
    required String userId,
    @JsonKey(includeFromJson: false, includeToJson: false) User? user,
    required String menuItemIds,
  }) = _FoodOrder;

  factory FoodOrder.fromJson(Map<String, dynamic> json) {
    return FoodOrder(
      id: json['id'] as String,
      sessionId: json['sessionId'] as String,
      userId: json['userId'] as String,
      menuItemIds: json['menuItemIds'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'sessionId': sessionId,
      'userId': userId,
      'menuItemIds': menuItemIds,
    };
  }
}

/// Input for creating a new FoodOrder
@freezed
class CreateFoodOrderInput with _$CreateFoodOrderInput {
  const CreateFoodOrderInput._();

  const factory CreateFoodOrderInput({
    required String sessionId,
    required String userId,
    required String menuItemIds,
  }) = _CreateFoodOrderInput;

  factory CreateFoodOrderInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('CreateFoodOrderInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'sessionId': sessionId,
      'userId': userId,
      'menuItemIds': menuItemIds,
    };
  }
}

/// Input for updating an existing FoodOrder
@freezed
class UpdateFoodOrderInput with _$UpdateFoodOrderInput {
  const UpdateFoodOrderInput._();

  const factory UpdateFoodOrderInput({
    String? sessionId,
    String? userId,
    String? menuItemIds,
  }) = _UpdateFoodOrderInput;

  factory UpdateFoodOrderInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('UpdateFoodOrderInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (sessionId != null) 'sessionId': sessionId,
      if (userId != null) 'userId': userId,
      if (menuItemIds != null) 'menuItemIds': menuItemIds,
    };
  }
}

@freezed
class FoodOrderWhereUniqueInput with _$FoodOrderWhereUniqueInput {
  const FoodOrderWhereUniqueInput._();

  const factory FoodOrderWhereUniqueInput({String? id}) =
      _FoodOrderWhereUniqueInput;

  factory FoodOrderWhereUniqueInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('FoodOrderWhereUniqueInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{if (id != null) 'id': id};
  }
}

@freezed
class FoodOrderWhereInput with _$FoodOrderWhereInput {
  const FoodOrderWhereInput._();

  const factory FoodOrderWhereInput({
    StringFilter? id,
    StringFilter? sessionId,
    GameSessionRelationFilter? session,
    StringFilter? userId,
    UserRelationFilter? user,
    StringFilter? menuItemIds,
    List<FoodOrderWhereInput>? AND,
    List<FoodOrderWhereInput>? OR,
    FoodOrderWhereInput? NOT,
  }) = _FoodOrderWhereInput;

  factory FoodOrderWhereInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('FoodOrderWhereInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) 'id': id!.toJson(),
      if (sessionId != null) 'sessionId': sessionId!.toJson(),
      if (session != null) 'session': session!.toJson(),
      if (userId != null) 'userId': userId!.toJson(),
      if (user != null) 'user': user!.toJson(),
      if (menuItemIds != null) 'menuItemIds': menuItemIds!.toJson(),
      if (AND != null) 'AND': AND!.map((e) => e.toJson()).toList(),
      if (OR != null) 'OR': OR!.map((e) => e.toJson()).toList(),
      if (NOT != null) 'NOT': NOT!.toJson(),
    };
  }
}

@freezed
class FoodOrderListRelationFilter with _$FoodOrderListRelationFilter {
  const FoodOrderListRelationFilter._();

  const factory FoodOrderListRelationFilter({
    FoodOrderWhereInput? some,
    FoodOrderWhereInput? every,
    FoodOrderWhereInput? none,
  }) = _FoodOrderListRelationFilter;

  factory FoodOrderListRelationFilter.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('FoodOrderListRelationFilter.fromJson not needed');
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
class FoodOrderRelationFilter with _$FoodOrderRelationFilter {
  const FoodOrderRelationFilter._();

  const factory FoodOrderRelationFilter({
    @JsonKey(name: 'is') FoodOrderWhereInput? is_,
    FoodOrderWhereInput? isNot,
  }) = _FoodOrderRelationFilter;

  factory FoodOrderRelationFilter.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('FoodOrderRelationFilter.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (is_ != null) 'is': is_!.toJson(),
      if (isNot != null) 'isNot': isNot!.toJson(),
    };
  }
}

@freezed
class FoodOrderOrderByInput with _$FoodOrderOrderByInput {
  const FoodOrderOrderByInput._();

  const factory FoodOrderOrderByInput({
    SortOrder? id,
    SortOrder? sessionId,
    SortOrder? userId,
    SortOrder? menuItemIds,
  }) = _FoodOrderOrderByInput;

  factory FoodOrderOrderByInput.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('FoodOrderOrderByInput.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) 'id': id!.name,
      if (sessionId != null) 'sessionId': sessionId!.name,
      if (userId != null) 'userId': userId!.name,
      if (menuItemIds != null) 'menuItemIds': menuItemIds!.name,
    };
  }
}

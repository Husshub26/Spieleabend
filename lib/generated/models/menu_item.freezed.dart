// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MenuItem {
  String get id => throw _privateConstructorUsedError;
  String get deliveryServiceId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  DeliveryService? get deliveryService => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get priceEur => throw _privateConstructorUsedError;

  /// Create a copy of MenuItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MenuItemCopyWith<MenuItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuItemCopyWith<$Res> {
  factory $MenuItemCopyWith(MenuItem value, $Res Function(MenuItem) then) =
      _$MenuItemCopyWithImpl<$Res, MenuItem>;
  @useResult
  $Res call({
    String id,
    String deliveryServiceId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    DeliveryService? deliveryService,
    String name,
    String description,
    double priceEur,
  });

  $DeliveryServiceCopyWith<$Res>? get deliveryService;
}

/// @nodoc
class _$MenuItemCopyWithImpl<$Res, $Val extends MenuItem>
    implements $MenuItemCopyWith<$Res> {
  _$MenuItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MenuItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deliveryServiceId = null,
    Object? deliveryService = freezed,
    Object? name = null,
    Object? description = null,
    Object? priceEur = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            deliveryServiceId: null == deliveryServiceId
                ? _value.deliveryServiceId
                : deliveryServiceId // ignore: cast_nullable_to_non_nullable
                      as String,
            deliveryService: freezed == deliveryService
                ? _value.deliveryService
                : deliveryService // ignore: cast_nullable_to_non_nullable
                      as DeliveryService?,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            priceEur: null == priceEur
                ? _value.priceEur
                : priceEur // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }

  /// Create a copy of MenuItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliveryServiceCopyWith<$Res>? get deliveryService {
    if (_value.deliveryService == null) {
      return null;
    }

    return $DeliveryServiceCopyWith<$Res>(_value.deliveryService!, (value) {
      return _then(_value.copyWith(deliveryService: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MenuItemImplCopyWith<$Res>
    implements $MenuItemCopyWith<$Res> {
  factory _$$MenuItemImplCopyWith(
    _$MenuItemImpl value,
    $Res Function(_$MenuItemImpl) then,
  ) = __$$MenuItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String deliveryServiceId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    DeliveryService? deliveryService,
    String name,
    String description,
    double priceEur,
  });

  @override
  $DeliveryServiceCopyWith<$Res>? get deliveryService;
}

/// @nodoc
class __$$MenuItemImplCopyWithImpl<$Res>
    extends _$MenuItemCopyWithImpl<$Res, _$MenuItemImpl>
    implements _$$MenuItemImplCopyWith<$Res> {
  __$$MenuItemImplCopyWithImpl(
    _$MenuItemImpl _value,
    $Res Function(_$MenuItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MenuItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deliveryServiceId = null,
    Object? deliveryService = freezed,
    Object? name = null,
    Object? description = null,
    Object? priceEur = null,
  }) {
    return _then(
      _$MenuItemImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        deliveryServiceId: null == deliveryServiceId
            ? _value.deliveryServiceId
            : deliveryServiceId // ignore: cast_nullable_to_non_nullable
                  as String,
        deliveryService: freezed == deliveryService
            ? _value.deliveryService
            : deliveryService // ignore: cast_nullable_to_non_nullable
                  as DeliveryService?,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        priceEur: null == priceEur
            ? _value.priceEur
            : priceEur // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc

class _$MenuItemImpl extends _MenuItem {
  const _$MenuItemImpl({
    required this.id,
    required this.deliveryServiceId,
    @JsonKey(includeFromJson: false, includeToJson: false) this.deliveryService,
    required this.name,
    required this.description,
    required this.priceEur,
  }) : super._();

  @override
  final String id;
  @override
  final String deliveryServiceId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final DeliveryService? deliveryService;
  @override
  final String name;
  @override
  final String description;
  @override
  final double priceEur;

  @override
  String toString() {
    return 'MenuItem(id: $id, deliveryServiceId: $deliveryServiceId, deliveryService: $deliveryService, name: $name, description: $description, priceEur: $priceEur)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.deliveryServiceId, deliveryServiceId) ||
                other.deliveryServiceId == deliveryServiceId) &&
            (identical(other.deliveryService, deliveryService) ||
                other.deliveryService == deliveryService) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.priceEur, priceEur) ||
                other.priceEur == priceEur));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    deliveryServiceId,
    deliveryService,
    name,
    description,
    priceEur,
  );

  /// Create a copy of MenuItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuItemImplCopyWith<_$MenuItemImpl> get copyWith =>
      __$$MenuItemImplCopyWithImpl<_$MenuItemImpl>(this, _$identity);
}

abstract class _MenuItem extends MenuItem {
  const factory _MenuItem({
    required final String id,
    required final String deliveryServiceId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final DeliveryService? deliveryService,
    required final String name,
    required final String description,
    required final double priceEur,
  }) = _$MenuItemImpl;
  const _MenuItem._() : super._();

  @override
  String get id;
  @override
  String get deliveryServiceId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  DeliveryService? get deliveryService;
  @override
  String get name;
  @override
  String get description;
  @override
  double get priceEur;

  /// Create a copy of MenuItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MenuItemImplCopyWith<_$MenuItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateMenuItemInput {
  String get deliveryServiceId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get priceEur => throw _privateConstructorUsedError;

  /// Create a copy of CreateMenuItemInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateMenuItemInputCopyWith<CreateMenuItemInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateMenuItemInputCopyWith<$Res> {
  factory $CreateMenuItemInputCopyWith(
    CreateMenuItemInput value,
    $Res Function(CreateMenuItemInput) then,
  ) = _$CreateMenuItemInputCopyWithImpl<$Res, CreateMenuItemInput>;
  @useResult
  $Res call({
    String deliveryServiceId,
    String name,
    String description,
    double priceEur,
  });
}

/// @nodoc
class _$CreateMenuItemInputCopyWithImpl<$Res, $Val extends CreateMenuItemInput>
    implements $CreateMenuItemInputCopyWith<$Res> {
  _$CreateMenuItemInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateMenuItemInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryServiceId = null,
    Object? name = null,
    Object? description = null,
    Object? priceEur = null,
  }) {
    return _then(
      _value.copyWith(
            deliveryServiceId: null == deliveryServiceId
                ? _value.deliveryServiceId
                : deliveryServiceId // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            priceEur: null == priceEur
                ? _value.priceEur
                : priceEur // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateMenuItemInputImplCopyWith<$Res>
    implements $CreateMenuItemInputCopyWith<$Res> {
  factory _$$CreateMenuItemInputImplCopyWith(
    _$CreateMenuItemInputImpl value,
    $Res Function(_$CreateMenuItemInputImpl) then,
  ) = __$$CreateMenuItemInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String deliveryServiceId,
    String name,
    String description,
    double priceEur,
  });
}

/// @nodoc
class __$$CreateMenuItemInputImplCopyWithImpl<$Res>
    extends _$CreateMenuItemInputCopyWithImpl<$Res, _$CreateMenuItemInputImpl>
    implements _$$CreateMenuItemInputImplCopyWith<$Res> {
  __$$CreateMenuItemInputImplCopyWithImpl(
    _$CreateMenuItemInputImpl _value,
    $Res Function(_$CreateMenuItemInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateMenuItemInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryServiceId = null,
    Object? name = null,
    Object? description = null,
    Object? priceEur = null,
  }) {
    return _then(
      _$CreateMenuItemInputImpl(
        deliveryServiceId: null == deliveryServiceId
            ? _value.deliveryServiceId
            : deliveryServiceId // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        priceEur: null == priceEur
            ? _value.priceEur
            : priceEur // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc

class _$CreateMenuItemInputImpl extends _CreateMenuItemInput {
  const _$CreateMenuItemInputImpl({
    required this.deliveryServiceId,
    required this.name,
    required this.description,
    required this.priceEur,
  }) : super._();

  @override
  final String deliveryServiceId;
  @override
  final String name;
  @override
  final String description;
  @override
  final double priceEur;

  @override
  String toString() {
    return 'CreateMenuItemInput(deliveryServiceId: $deliveryServiceId, name: $name, description: $description, priceEur: $priceEur)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateMenuItemInputImpl &&
            (identical(other.deliveryServiceId, deliveryServiceId) ||
                other.deliveryServiceId == deliveryServiceId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.priceEur, priceEur) ||
                other.priceEur == priceEur));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, deliveryServiceId, name, description, priceEur);

  /// Create a copy of CreateMenuItemInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateMenuItemInputImplCopyWith<_$CreateMenuItemInputImpl> get copyWith =>
      __$$CreateMenuItemInputImplCopyWithImpl<_$CreateMenuItemInputImpl>(
        this,
        _$identity,
      );
}

abstract class _CreateMenuItemInput extends CreateMenuItemInput {
  const factory _CreateMenuItemInput({
    required final String deliveryServiceId,
    required final String name,
    required final String description,
    required final double priceEur,
  }) = _$CreateMenuItemInputImpl;
  const _CreateMenuItemInput._() : super._();

  @override
  String get deliveryServiceId;
  @override
  String get name;
  @override
  String get description;
  @override
  double get priceEur;

  /// Create a copy of CreateMenuItemInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateMenuItemInputImplCopyWith<_$CreateMenuItemInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateMenuItemInput {
  String? get deliveryServiceId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double? get priceEur => throw _privateConstructorUsedError;

  /// Create a copy of UpdateMenuItemInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateMenuItemInputCopyWith<UpdateMenuItemInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateMenuItemInputCopyWith<$Res> {
  factory $UpdateMenuItemInputCopyWith(
    UpdateMenuItemInput value,
    $Res Function(UpdateMenuItemInput) then,
  ) = _$UpdateMenuItemInputCopyWithImpl<$Res, UpdateMenuItemInput>;
  @useResult
  $Res call({
    String? deliveryServiceId,
    String? name,
    String? description,
    double? priceEur,
  });
}

/// @nodoc
class _$UpdateMenuItemInputCopyWithImpl<$Res, $Val extends UpdateMenuItemInput>
    implements $UpdateMenuItemInputCopyWith<$Res> {
  _$UpdateMenuItemInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateMenuItemInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryServiceId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? priceEur = freezed,
  }) {
    return _then(
      _value.copyWith(
            deliveryServiceId: freezed == deliveryServiceId
                ? _value.deliveryServiceId
                : deliveryServiceId // ignore: cast_nullable_to_non_nullable
                      as String?,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            priceEur: freezed == priceEur
                ? _value.priceEur
                : priceEur // ignore: cast_nullable_to_non_nullable
                      as double?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateMenuItemInputImplCopyWith<$Res>
    implements $UpdateMenuItemInputCopyWith<$Res> {
  factory _$$UpdateMenuItemInputImplCopyWith(
    _$UpdateMenuItemInputImpl value,
    $Res Function(_$UpdateMenuItemInputImpl) then,
  ) = __$$UpdateMenuItemInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? deliveryServiceId,
    String? name,
    String? description,
    double? priceEur,
  });
}

/// @nodoc
class __$$UpdateMenuItemInputImplCopyWithImpl<$Res>
    extends _$UpdateMenuItemInputCopyWithImpl<$Res, _$UpdateMenuItemInputImpl>
    implements _$$UpdateMenuItemInputImplCopyWith<$Res> {
  __$$UpdateMenuItemInputImplCopyWithImpl(
    _$UpdateMenuItemInputImpl _value,
    $Res Function(_$UpdateMenuItemInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateMenuItemInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryServiceId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? priceEur = freezed,
  }) {
    return _then(
      _$UpdateMenuItemInputImpl(
        deliveryServiceId: freezed == deliveryServiceId
            ? _value.deliveryServiceId
            : deliveryServiceId // ignore: cast_nullable_to_non_nullable
                  as String?,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        priceEur: freezed == priceEur
            ? _value.priceEur
            : priceEur // ignore: cast_nullable_to_non_nullable
                  as double?,
      ),
    );
  }
}

/// @nodoc

class _$UpdateMenuItemInputImpl extends _UpdateMenuItemInput {
  const _$UpdateMenuItemInputImpl({
    this.deliveryServiceId,
    this.name,
    this.description,
    this.priceEur,
  }) : super._();

  @override
  final String? deliveryServiceId;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final double? priceEur;

  @override
  String toString() {
    return 'UpdateMenuItemInput(deliveryServiceId: $deliveryServiceId, name: $name, description: $description, priceEur: $priceEur)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateMenuItemInputImpl &&
            (identical(other.deliveryServiceId, deliveryServiceId) ||
                other.deliveryServiceId == deliveryServiceId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.priceEur, priceEur) ||
                other.priceEur == priceEur));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, deliveryServiceId, name, description, priceEur);

  /// Create a copy of UpdateMenuItemInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateMenuItemInputImplCopyWith<_$UpdateMenuItemInputImpl> get copyWith =>
      __$$UpdateMenuItemInputImplCopyWithImpl<_$UpdateMenuItemInputImpl>(
        this,
        _$identity,
      );
}

abstract class _UpdateMenuItemInput extends UpdateMenuItemInput {
  const factory _UpdateMenuItemInput({
    final String? deliveryServiceId,
    final String? name,
    final String? description,
    final double? priceEur,
  }) = _$UpdateMenuItemInputImpl;
  const _UpdateMenuItemInput._() : super._();

  @override
  String? get deliveryServiceId;
  @override
  String? get name;
  @override
  String? get description;
  @override
  double? get priceEur;

  /// Create a copy of UpdateMenuItemInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateMenuItemInputImplCopyWith<_$UpdateMenuItemInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MenuItemWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Create a copy of MenuItemWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MenuItemWhereUniqueInputCopyWith<MenuItemWhereUniqueInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuItemWhereUniqueInputCopyWith<$Res> {
  factory $MenuItemWhereUniqueInputCopyWith(
    MenuItemWhereUniqueInput value,
    $Res Function(MenuItemWhereUniqueInput) then,
  ) = _$MenuItemWhereUniqueInputCopyWithImpl<$Res, MenuItemWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$MenuItemWhereUniqueInputCopyWithImpl<
  $Res,
  $Val extends MenuItemWhereUniqueInput
>
    implements $MenuItemWhereUniqueInputCopyWith<$Res> {
  _$MenuItemWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MenuItemWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed}) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MenuItemWhereUniqueInputImplCopyWith<$Res>
    implements $MenuItemWhereUniqueInputCopyWith<$Res> {
  factory _$$MenuItemWhereUniqueInputImplCopyWith(
    _$MenuItemWhereUniqueInputImpl value,
    $Res Function(_$MenuItemWhereUniqueInputImpl) then,
  ) = __$$MenuItemWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$MenuItemWhereUniqueInputImplCopyWithImpl<$Res>
    extends
        _$MenuItemWhereUniqueInputCopyWithImpl<
          $Res,
          _$MenuItemWhereUniqueInputImpl
        >
    implements _$$MenuItemWhereUniqueInputImplCopyWith<$Res> {
  __$$MenuItemWhereUniqueInputImplCopyWithImpl(
    _$MenuItemWhereUniqueInputImpl _value,
    $Res Function(_$MenuItemWhereUniqueInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MenuItemWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed}) {
    return _then(
      _$MenuItemWhereUniqueInputImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$MenuItemWhereUniqueInputImpl extends _MenuItemWhereUniqueInput {
  const _$MenuItemWhereUniqueInputImpl({this.id}) : super._();

  @override
  final String? id;

  @override
  String toString() {
    return 'MenuItemWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuItemWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of MenuItemWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuItemWhereUniqueInputImplCopyWith<_$MenuItemWhereUniqueInputImpl>
  get copyWith =>
      __$$MenuItemWhereUniqueInputImplCopyWithImpl<
        _$MenuItemWhereUniqueInputImpl
      >(this, _$identity);
}

abstract class _MenuItemWhereUniqueInput extends MenuItemWhereUniqueInput {
  const factory _MenuItemWhereUniqueInput({final String? id}) =
      _$MenuItemWhereUniqueInputImpl;
  const _MenuItemWhereUniqueInput._() : super._();

  @override
  String? get id;

  /// Create a copy of MenuItemWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MenuItemWhereUniqueInputImplCopyWith<_$MenuItemWhereUniqueInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MenuItemWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get deliveryServiceId => throw _privateConstructorUsedError;
  DeliveryServiceRelationFilter? get deliveryService =>
      throw _privateConstructorUsedError;
  StringFilter? get name => throw _privateConstructorUsedError;
  StringFilter? get description => throw _privateConstructorUsedError;
  FloatFilter? get priceEur => throw _privateConstructorUsedError;
  List<MenuItemWhereInput>? get AND => throw _privateConstructorUsedError;
  List<MenuItemWhereInput>? get OR => throw _privateConstructorUsedError;
  MenuItemWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Create a copy of MenuItemWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MenuItemWhereInputCopyWith<MenuItemWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuItemWhereInputCopyWith<$Res> {
  factory $MenuItemWhereInputCopyWith(
    MenuItemWhereInput value,
    $Res Function(MenuItemWhereInput) then,
  ) = _$MenuItemWhereInputCopyWithImpl<$Res, MenuItemWhereInput>;
  @useResult
  $Res call({
    StringFilter? id,
    StringFilter? deliveryServiceId,
    DeliveryServiceRelationFilter? deliveryService,
    StringFilter? name,
    StringFilter? description,
    FloatFilter? priceEur,
    List<MenuItemWhereInput>? AND,
    List<MenuItemWhereInput>? OR,
    MenuItemWhereInput? NOT,
  });

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get deliveryServiceId;
  $DeliveryServiceRelationFilterCopyWith<$Res>? get deliveryService;
  $StringFilterCopyWith<$Res>? get name;
  $StringFilterCopyWith<$Res>? get description;
  $FloatFilterCopyWith<$Res>? get priceEur;
  $MenuItemWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$MenuItemWhereInputCopyWithImpl<$Res, $Val extends MenuItemWhereInput>
    implements $MenuItemWhereInputCopyWith<$Res> {
  _$MenuItemWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MenuItemWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? deliveryServiceId = freezed,
    Object? deliveryService = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? priceEur = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as StringFilter?,
            deliveryServiceId: freezed == deliveryServiceId
                ? _value.deliveryServiceId
                : deliveryServiceId // ignore: cast_nullable_to_non_nullable
                      as StringFilter?,
            deliveryService: freezed == deliveryService
                ? _value.deliveryService
                : deliveryService // ignore: cast_nullable_to_non_nullable
                      as DeliveryServiceRelationFilter?,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as StringFilter?,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as StringFilter?,
            priceEur: freezed == priceEur
                ? _value.priceEur
                : priceEur // ignore: cast_nullable_to_non_nullable
                      as FloatFilter?,
            AND: freezed == AND
                ? _value.AND
                : AND // ignore: cast_nullable_to_non_nullable
                      as List<MenuItemWhereInput>?,
            OR: freezed == OR
                ? _value.OR
                : OR // ignore: cast_nullable_to_non_nullable
                      as List<MenuItemWhereInput>?,
            NOT: freezed == NOT
                ? _value.NOT
                : NOT // ignore: cast_nullable_to_non_nullable
                      as MenuItemWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of MenuItemWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get id {
    if (_value.id == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.id!, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  /// Create a copy of MenuItemWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get deliveryServiceId {
    if (_value.deliveryServiceId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.deliveryServiceId!, (value) {
      return _then(_value.copyWith(deliveryServiceId: value) as $Val);
    });
  }

  /// Create a copy of MenuItemWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliveryServiceRelationFilterCopyWith<$Res>? get deliveryService {
    if (_value.deliveryService == null) {
      return null;
    }

    return $DeliveryServiceRelationFilterCopyWith<$Res>(
      _value.deliveryService!,
      (value) {
        return _then(_value.copyWith(deliveryService: value) as $Val);
      },
    );
  }

  /// Create a copy of MenuItemWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get name {
    if (_value.name == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.name!, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  /// Create a copy of MenuItemWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get description {
    if (_value.description == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.description!, (value) {
      return _then(_value.copyWith(description: value) as $Val);
    });
  }

  /// Create a copy of MenuItemWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FloatFilterCopyWith<$Res>? get priceEur {
    if (_value.priceEur == null) {
      return null;
    }

    return $FloatFilterCopyWith<$Res>(_value.priceEur!, (value) {
      return _then(_value.copyWith(priceEur: value) as $Val);
    });
  }

  /// Create a copy of MenuItemWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MenuItemWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $MenuItemWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MenuItemWhereInputImplCopyWith<$Res>
    implements $MenuItemWhereInputCopyWith<$Res> {
  factory _$$MenuItemWhereInputImplCopyWith(
    _$MenuItemWhereInputImpl value,
    $Res Function(_$MenuItemWhereInputImpl) then,
  ) = __$$MenuItemWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    StringFilter? id,
    StringFilter? deliveryServiceId,
    DeliveryServiceRelationFilter? deliveryService,
    StringFilter? name,
    StringFilter? description,
    FloatFilter? priceEur,
    List<MenuItemWhereInput>? AND,
    List<MenuItemWhereInput>? OR,
    MenuItemWhereInput? NOT,
  });

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get deliveryServiceId;
  @override
  $DeliveryServiceRelationFilterCopyWith<$Res>? get deliveryService;
  @override
  $StringFilterCopyWith<$Res>? get name;
  @override
  $StringFilterCopyWith<$Res>? get description;
  @override
  $FloatFilterCopyWith<$Res>? get priceEur;
  @override
  $MenuItemWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$MenuItemWhereInputImplCopyWithImpl<$Res>
    extends _$MenuItemWhereInputCopyWithImpl<$Res, _$MenuItemWhereInputImpl>
    implements _$$MenuItemWhereInputImplCopyWith<$Res> {
  __$$MenuItemWhereInputImplCopyWithImpl(
    _$MenuItemWhereInputImpl _value,
    $Res Function(_$MenuItemWhereInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MenuItemWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? deliveryServiceId = freezed,
    Object? deliveryService = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? priceEur = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(
      _$MenuItemWhereInputImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as StringFilter?,
        deliveryServiceId: freezed == deliveryServiceId
            ? _value.deliveryServiceId
            : deliveryServiceId // ignore: cast_nullable_to_non_nullable
                  as StringFilter?,
        deliveryService: freezed == deliveryService
            ? _value.deliveryService
            : deliveryService // ignore: cast_nullable_to_non_nullable
                  as DeliveryServiceRelationFilter?,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as StringFilter?,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as StringFilter?,
        priceEur: freezed == priceEur
            ? _value.priceEur
            : priceEur // ignore: cast_nullable_to_non_nullable
                  as FloatFilter?,
        AND: freezed == AND
            ? _value._AND
            : AND // ignore: cast_nullable_to_non_nullable
                  as List<MenuItemWhereInput>?,
        OR: freezed == OR
            ? _value._OR
            : OR // ignore: cast_nullable_to_non_nullable
                  as List<MenuItemWhereInput>?,
        NOT: freezed == NOT
            ? _value.NOT
            : NOT // ignore: cast_nullable_to_non_nullable
                  as MenuItemWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$MenuItemWhereInputImpl extends _MenuItemWhereInput {
  const _$MenuItemWhereInputImpl({
    this.id,
    this.deliveryServiceId,
    this.deliveryService,
    this.name,
    this.description,
    this.priceEur,
    final List<MenuItemWhereInput>? AND,
    final List<MenuItemWhereInput>? OR,
    this.NOT,
  }) : _AND = AND,
       _OR = OR,
       super._();

  @override
  final StringFilter? id;
  @override
  final StringFilter? deliveryServiceId;
  @override
  final DeliveryServiceRelationFilter? deliveryService;
  @override
  final StringFilter? name;
  @override
  final StringFilter? description;
  @override
  final FloatFilter? priceEur;
  final List<MenuItemWhereInput>? _AND;
  @override
  List<MenuItemWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MenuItemWhereInput>? _OR;
  @override
  List<MenuItemWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final MenuItemWhereInput? NOT;

  @override
  String toString() {
    return 'MenuItemWhereInput(id: $id, deliveryServiceId: $deliveryServiceId, deliveryService: $deliveryService, name: $name, description: $description, priceEur: $priceEur, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuItemWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.deliveryServiceId, deliveryServiceId) ||
                other.deliveryServiceId == deliveryServiceId) &&
            (identical(other.deliveryService, deliveryService) ||
                other.deliveryService == deliveryService) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.priceEur, priceEur) ||
                other.priceEur == priceEur) &&
            const DeepCollectionEquality().equals(other._AND, _AND) &&
            const DeepCollectionEquality().equals(other._OR, _OR) &&
            (identical(other.NOT, NOT) || other.NOT == NOT));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    deliveryServiceId,
    deliveryService,
    name,
    description,
    priceEur,
    const DeepCollectionEquality().hash(_AND),
    const DeepCollectionEquality().hash(_OR),
    NOT,
  );

  /// Create a copy of MenuItemWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuItemWhereInputImplCopyWith<_$MenuItemWhereInputImpl> get copyWith =>
      __$$MenuItemWhereInputImplCopyWithImpl<_$MenuItemWhereInputImpl>(
        this,
        _$identity,
      );
}

abstract class _MenuItemWhereInput extends MenuItemWhereInput {
  const factory _MenuItemWhereInput({
    final StringFilter? id,
    final StringFilter? deliveryServiceId,
    final DeliveryServiceRelationFilter? deliveryService,
    final StringFilter? name,
    final StringFilter? description,
    final FloatFilter? priceEur,
    final List<MenuItemWhereInput>? AND,
    final List<MenuItemWhereInput>? OR,
    final MenuItemWhereInput? NOT,
  }) = _$MenuItemWhereInputImpl;
  const _MenuItemWhereInput._() : super._();

  @override
  StringFilter? get id;
  @override
  StringFilter? get deliveryServiceId;
  @override
  DeliveryServiceRelationFilter? get deliveryService;
  @override
  StringFilter? get name;
  @override
  StringFilter? get description;
  @override
  FloatFilter? get priceEur;
  @override
  List<MenuItemWhereInput>? get AND;
  @override
  List<MenuItemWhereInput>? get OR;
  @override
  MenuItemWhereInput? get NOT;

  /// Create a copy of MenuItemWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MenuItemWhereInputImplCopyWith<_$MenuItemWhereInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MenuItemListRelationFilter {
  MenuItemWhereInput? get some => throw _privateConstructorUsedError;
  MenuItemWhereInput? get every => throw _privateConstructorUsedError;
  MenuItemWhereInput? get none => throw _privateConstructorUsedError;

  /// Create a copy of MenuItemListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MenuItemListRelationFilterCopyWith<MenuItemListRelationFilter>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuItemListRelationFilterCopyWith<$Res> {
  factory $MenuItemListRelationFilterCopyWith(
    MenuItemListRelationFilter value,
    $Res Function(MenuItemListRelationFilter) then,
  ) =
      _$MenuItemListRelationFilterCopyWithImpl<
        $Res,
        MenuItemListRelationFilter
      >;
  @useResult
  $Res call({
    MenuItemWhereInput? some,
    MenuItemWhereInput? every,
    MenuItemWhereInput? none,
  });

  $MenuItemWhereInputCopyWith<$Res>? get some;
  $MenuItemWhereInputCopyWith<$Res>? get every;
  $MenuItemWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$MenuItemListRelationFilterCopyWithImpl<
  $Res,
  $Val extends MenuItemListRelationFilter
>
    implements $MenuItemListRelationFilterCopyWith<$Res> {
  _$MenuItemListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MenuItemListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(
      _value.copyWith(
            some: freezed == some
                ? _value.some
                : some // ignore: cast_nullable_to_non_nullable
                      as MenuItemWhereInput?,
            every: freezed == every
                ? _value.every
                : every // ignore: cast_nullable_to_non_nullable
                      as MenuItemWhereInput?,
            none: freezed == none
                ? _value.none
                : none // ignore: cast_nullable_to_non_nullable
                      as MenuItemWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of MenuItemListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MenuItemWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $MenuItemWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of MenuItemListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MenuItemWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $MenuItemWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of MenuItemListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MenuItemWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $MenuItemWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MenuItemListRelationFilterImplCopyWith<$Res>
    implements $MenuItemListRelationFilterCopyWith<$Res> {
  factory _$$MenuItemListRelationFilterImplCopyWith(
    _$MenuItemListRelationFilterImpl value,
    $Res Function(_$MenuItemListRelationFilterImpl) then,
  ) = __$$MenuItemListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    MenuItemWhereInput? some,
    MenuItemWhereInput? every,
    MenuItemWhereInput? none,
  });

  @override
  $MenuItemWhereInputCopyWith<$Res>? get some;
  @override
  $MenuItemWhereInputCopyWith<$Res>? get every;
  @override
  $MenuItemWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$MenuItemListRelationFilterImplCopyWithImpl<$Res>
    extends
        _$MenuItemListRelationFilterCopyWithImpl<
          $Res,
          _$MenuItemListRelationFilterImpl
        >
    implements _$$MenuItemListRelationFilterImplCopyWith<$Res> {
  __$$MenuItemListRelationFilterImplCopyWithImpl(
    _$MenuItemListRelationFilterImpl _value,
    $Res Function(_$MenuItemListRelationFilterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MenuItemListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(
      _$MenuItemListRelationFilterImpl(
        some: freezed == some
            ? _value.some
            : some // ignore: cast_nullable_to_non_nullable
                  as MenuItemWhereInput?,
        every: freezed == every
            ? _value.every
            : every // ignore: cast_nullable_to_non_nullable
                  as MenuItemWhereInput?,
        none: freezed == none
            ? _value.none
            : none // ignore: cast_nullable_to_non_nullable
                  as MenuItemWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$MenuItemListRelationFilterImpl extends _MenuItemListRelationFilter {
  const _$MenuItemListRelationFilterImpl({this.some, this.every, this.none})
    : super._();

  @override
  final MenuItemWhereInput? some;
  @override
  final MenuItemWhereInput? every;
  @override
  final MenuItemWhereInput? none;

  @override
  String toString() {
    return 'MenuItemListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuItemListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of MenuItemListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuItemListRelationFilterImplCopyWith<_$MenuItemListRelationFilterImpl>
  get copyWith =>
      __$$MenuItemListRelationFilterImplCopyWithImpl<
        _$MenuItemListRelationFilterImpl
      >(this, _$identity);
}

abstract class _MenuItemListRelationFilter extends MenuItemListRelationFilter {
  const factory _MenuItemListRelationFilter({
    final MenuItemWhereInput? some,
    final MenuItemWhereInput? every,
    final MenuItemWhereInput? none,
  }) = _$MenuItemListRelationFilterImpl;
  const _MenuItemListRelationFilter._() : super._();

  @override
  MenuItemWhereInput? get some;
  @override
  MenuItemWhereInput? get every;
  @override
  MenuItemWhereInput? get none;

  /// Create a copy of MenuItemListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MenuItemListRelationFilterImplCopyWith<_$MenuItemListRelationFilterImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MenuItemRelationFilter {
  @JsonKey(name: 'is')
  MenuItemWhereInput? get is_ => throw _privateConstructorUsedError;
  MenuItemWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Create a copy of MenuItemRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MenuItemRelationFilterCopyWith<MenuItemRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuItemRelationFilterCopyWith<$Res> {
  factory $MenuItemRelationFilterCopyWith(
    MenuItemRelationFilter value,
    $Res Function(MenuItemRelationFilter) then,
  ) = _$MenuItemRelationFilterCopyWithImpl<$Res, MenuItemRelationFilter>;
  @useResult
  $Res call({
    @JsonKey(name: 'is') MenuItemWhereInput? is_,
    MenuItemWhereInput? isNot,
  });

  $MenuItemWhereInputCopyWith<$Res>? get is_;
  $MenuItemWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$MenuItemRelationFilterCopyWithImpl<
  $Res,
  $Val extends MenuItemRelationFilter
>
    implements $MenuItemRelationFilterCopyWith<$Res> {
  _$MenuItemRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MenuItemRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? is_ = freezed, Object? isNot = freezed}) {
    return _then(
      _value.copyWith(
            is_: freezed == is_
                ? _value.is_
                : is_ // ignore: cast_nullable_to_non_nullable
                      as MenuItemWhereInput?,
            isNot: freezed == isNot
                ? _value.isNot
                : isNot // ignore: cast_nullable_to_non_nullable
                      as MenuItemWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of MenuItemRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MenuItemWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $MenuItemWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of MenuItemRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MenuItemWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $MenuItemWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MenuItemRelationFilterImplCopyWith<$Res>
    implements $MenuItemRelationFilterCopyWith<$Res> {
  factory _$$MenuItemRelationFilterImplCopyWith(
    _$MenuItemRelationFilterImpl value,
    $Res Function(_$MenuItemRelationFilterImpl) then,
  ) = __$$MenuItemRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'is') MenuItemWhereInput? is_,
    MenuItemWhereInput? isNot,
  });

  @override
  $MenuItemWhereInputCopyWith<$Res>? get is_;
  @override
  $MenuItemWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$MenuItemRelationFilterImplCopyWithImpl<$Res>
    extends
        _$MenuItemRelationFilterCopyWithImpl<$Res, _$MenuItemRelationFilterImpl>
    implements _$$MenuItemRelationFilterImplCopyWith<$Res> {
  __$$MenuItemRelationFilterImplCopyWithImpl(
    _$MenuItemRelationFilterImpl _value,
    $Res Function(_$MenuItemRelationFilterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MenuItemRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? is_ = freezed, Object? isNot = freezed}) {
    return _then(
      _$MenuItemRelationFilterImpl(
        is_: freezed == is_
            ? _value.is_
            : is_ // ignore: cast_nullable_to_non_nullable
                  as MenuItemWhereInput?,
        isNot: freezed == isNot
            ? _value.isNot
            : isNot // ignore: cast_nullable_to_non_nullable
                  as MenuItemWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$MenuItemRelationFilterImpl extends _MenuItemRelationFilter {
  const _$MenuItemRelationFilterImpl({
    @JsonKey(name: 'is') this.is_,
    this.isNot,
  }) : super._();

  @override
  @JsonKey(name: 'is')
  final MenuItemWhereInput? is_;
  @override
  final MenuItemWhereInput? isNot;

  @override
  String toString() {
    return 'MenuItemRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuItemRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of MenuItemRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuItemRelationFilterImplCopyWith<_$MenuItemRelationFilterImpl>
  get copyWith =>
      __$$MenuItemRelationFilterImplCopyWithImpl<_$MenuItemRelationFilterImpl>(
        this,
        _$identity,
      );
}

abstract class _MenuItemRelationFilter extends MenuItemRelationFilter {
  const factory _MenuItemRelationFilter({
    @JsonKey(name: 'is') final MenuItemWhereInput? is_,
    final MenuItemWhereInput? isNot,
  }) = _$MenuItemRelationFilterImpl;
  const _MenuItemRelationFilter._() : super._();

  @override
  @JsonKey(name: 'is')
  MenuItemWhereInput? get is_;
  @override
  MenuItemWhereInput? get isNot;

  /// Create a copy of MenuItemRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MenuItemRelationFilterImplCopyWith<_$MenuItemRelationFilterImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MenuItemOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get deliveryServiceId => throw _privateConstructorUsedError;
  SortOrder? get name => throw _privateConstructorUsedError;
  SortOrder? get description => throw _privateConstructorUsedError;
  SortOrder? get priceEur => throw _privateConstructorUsedError;

  /// Create a copy of MenuItemOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MenuItemOrderByInputCopyWith<MenuItemOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuItemOrderByInputCopyWith<$Res> {
  factory $MenuItemOrderByInputCopyWith(
    MenuItemOrderByInput value,
    $Res Function(MenuItemOrderByInput) then,
  ) = _$MenuItemOrderByInputCopyWithImpl<$Res, MenuItemOrderByInput>;
  @useResult
  $Res call({
    SortOrder? id,
    SortOrder? deliveryServiceId,
    SortOrder? name,
    SortOrder? description,
    SortOrder? priceEur,
  });
}

/// @nodoc
class _$MenuItemOrderByInputCopyWithImpl<
  $Res,
  $Val extends MenuItemOrderByInput
>
    implements $MenuItemOrderByInputCopyWith<$Res> {
  _$MenuItemOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MenuItemOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? deliveryServiceId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? priceEur = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
            deliveryServiceId: freezed == deliveryServiceId
                ? _value.deliveryServiceId
                : deliveryServiceId // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
            priceEur: freezed == priceEur
                ? _value.priceEur
                : priceEur // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MenuItemOrderByInputImplCopyWith<$Res>
    implements $MenuItemOrderByInputCopyWith<$Res> {
  factory _$$MenuItemOrderByInputImplCopyWith(
    _$MenuItemOrderByInputImpl value,
    $Res Function(_$MenuItemOrderByInputImpl) then,
  ) = __$$MenuItemOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    SortOrder? id,
    SortOrder? deliveryServiceId,
    SortOrder? name,
    SortOrder? description,
    SortOrder? priceEur,
  });
}

/// @nodoc
class __$$MenuItemOrderByInputImplCopyWithImpl<$Res>
    extends _$MenuItemOrderByInputCopyWithImpl<$Res, _$MenuItemOrderByInputImpl>
    implements _$$MenuItemOrderByInputImplCopyWith<$Res> {
  __$$MenuItemOrderByInputImplCopyWithImpl(
    _$MenuItemOrderByInputImpl _value,
    $Res Function(_$MenuItemOrderByInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MenuItemOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? deliveryServiceId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? priceEur = freezed,
  }) {
    return _then(
      _$MenuItemOrderByInputImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        deliveryServiceId: freezed == deliveryServiceId
            ? _value.deliveryServiceId
            : deliveryServiceId // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        priceEur: freezed == priceEur
            ? _value.priceEur
            : priceEur // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
      ),
    );
  }
}

/// @nodoc

class _$MenuItemOrderByInputImpl extends _MenuItemOrderByInput {
  const _$MenuItemOrderByInputImpl({
    this.id,
    this.deliveryServiceId,
    this.name,
    this.description,
    this.priceEur,
  }) : super._();

  @override
  final SortOrder? id;
  @override
  final SortOrder? deliveryServiceId;
  @override
  final SortOrder? name;
  @override
  final SortOrder? description;
  @override
  final SortOrder? priceEur;

  @override
  String toString() {
    return 'MenuItemOrderByInput(id: $id, deliveryServiceId: $deliveryServiceId, name: $name, description: $description, priceEur: $priceEur)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuItemOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.deliveryServiceId, deliveryServiceId) ||
                other.deliveryServiceId == deliveryServiceId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.priceEur, priceEur) ||
                other.priceEur == priceEur));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    deliveryServiceId,
    name,
    description,
    priceEur,
  );

  /// Create a copy of MenuItemOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuItemOrderByInputImplCopyWith<_$MenuItemOrderByInputImpl>
  get copyWith =>
      __$$MenuItemOrderByInputImplCopyWithImpl<_$MenuItemOrderByInputImpl>(
        this,
        _$identity,
      );
}

abstract class _MenuItemOrderByInput extends MenuItemOrderByInput {
  const factory _MenuItemOrderByInput({
    final SortOrder? id,
    final SortOrder? deliveryServiceId,
    final SortOrder? name,
    final SortOrder? description,
    final SortOrder? priceEur,
  }) = _$MenuItemOrderByInputImpl;
  const _MenuItemOrderByInput._() : super._();

  @override
  SortOrder? get id;
  @override
  SortOrder? get deliveryServiceId;
  @override
  SortOrder? get name;
  @override
  SortOrder? get description;
  @override
  SortOrder? get priceEur;

  /// Create a copy of MenuItemOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MenuItemOrderByInputImplCopyWith<_$MenuItemOrderByInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

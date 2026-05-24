// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DeliveryService {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  CuisineType get cuisine => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<MenuItem>? get menu => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryService
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryServiceCopyWith<DeliveryService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryServiceCopyWith<$Res> {
  factory $DeliveryServiceCopyWith(
    DeliveryService value,
    $Res Function(DeliveryService) then,
  ) = _$DeliveryServiceCopyWithImpl<$Res, DeliveryService>;
  @useResult
  $Res call({
    String id,
    String name,
    CuisineType cuisine,
    @JsonKey(includeFromJson: false, includeToJson: false) List<MenuItem>? menu,
  });
}

/// @nodoc
class _$DeliveryServiceCopyWithImpl<$Res, $Val extends DeliveryService>
    implements $DeliveryServiceCopyWith<$Res> {
  _$DeliveryServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryService
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? cuisine = null,
    Object? menu = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            cuisine: null == cuisine
                ? _value.cuisine
                : cuisine // ignore: cast_nullable_to_non_nullable
                      as CuisineType,
            menu: freezed == menu
                ? _value.menu
                : menu // ignore: cast_nullable_to_non_nullable
                      as List<MenuItem>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DeliveryServiceImplCopyWith<$Res>
    implements $DeliveryServiceCopyWith<$Res> {
  factory _$$DeliveryServiceImplCopyWith(
    _$DeliveryServiceImpl value,
    $Res Function(_$DeliveryServiceImpl) then,
  ) = __$$DeliveryServiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    CuisineType cuisine,
    @JsonKey(includeFromJson: false, includeToJson: false) List<MenuItem>? menu,
  });
}

/// @nodoc
class __$$DeliveryServiceImplCopyWithImpl<$Res>
    extends _$DeliveryServiceCopyWithImpl<$Res, _$DeliveryServiceImpl>
    implements _$$DeliveryServiceImplCopyWith<$Res> {
  __$$DeliveryServiceImplCopyWithImpl(
    _$DeliveryServiceImpl _value,
    $Res Function(_$DeliveryServiceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeliveryService
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? cuisine = null,
    Object? menu = freezed,
  }) {
    return _then(
      _$DeliveryServiceImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        cuisine: null == cuisine
            ? _value.cuisine
            : cuisine // ignore: cast_nullable_to_non_nullable
                  as CuisineType,
        menu: freezed == menu
            ? _value._menu
            : menu // ignore: cast_nullable_to_non_nullable
                  as List<MenuItem>?,
      ),
    );
  }
}

/// @nodoc

class _$DeliveryServiceImpl extends _DeliveryService {
  const _$DeliveryServiceImpl({
    required this.id,
    required this.name,
    required this.cuisine,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<MenuItem>? menu,
  }) : _menu = menu,
       super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final CuisineType cuisine;
  final List<MenuItem>? _menu;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<MenuItem>? get menu {
    final value = _menu;
    if (value == null) return null;
    if (_menu is EqualUnmodifiableListView) return _menu;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DeliveryService(id: $id, name: $name, cuisine: $cuisine, menu: $menu)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryServiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cuisine, cuisine) || other.cuisine == cuisine) &&
            const DeepCollectionEquality().equals(other._menu, _menu));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    cuisine,
    const DeepCollectionEquality().hash(_menu),
  );

  /// Create a copy of DeliveryService
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryServiceImplCopyWith<_$DeliveryServiceImpl> get copyWith =>
      __$$DeliveryServiceImplCopyWithImpl<_$DeliveryServiceImpl>(
        this,
        _$identity,
      );
}

abstract class _DeliveryService extends DeliveryService {
  const factory _DeliveryService({
    required final String id,
    required final String name,
    required final CuisineType cuisine,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final List<MenuItem>? menu,
  }) = _$DeliveryServiceImpl;
  const _DeliveryService._() : super._();

  @override
  String get id;
  @override
  String get name;
  @override
  CuisineType get cuisine;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<MenuItem>? get menu;

  /// Create a copy of DeliveryService
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryServiceImplCopyWith<_$DeliveryServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateDeliveryServiceInput {
  String get name => throw _privateConstructorUsedError;
  CuisineType get cuisine => throw _privateConstructorUsedError;

  /// Create a copy of CreateDeliveryServiceInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateDeliveryServiceInputCopyWith<CreateDeliveryServiceInput>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateDeliveryServiceInputCopyWith<$Res> {
  factory $CreateDeliveryServiceInputCopyWith(
    CreateDeliveryServiceInput value,
    $Res Function(CreateDeliveryServiceInput) then,
  ) =
      _$CreateDeliveryServiceInputCopyWithImpl<
        $Res,
        CreateDeliveryServiceInput
      >;
  @useResult
  $Res call({String name, CuisineType cuisine});
}

/// @nodoc
class _$CreateDeliveryServiceInputCopyWithImpl<
  $Res,
  $Val extends CreateDeliveryServiceInput
>
    implements $CreateDeliveryServiceInputCopyWith<$Res> {
  _$CreateDeliveryServiceInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateDeliveryServiceInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? cuisine = null}) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            cuisine: null == cuisine
                ? _value.cuisine
                : cuisine // ignore: cast_nullable_to_non_nullable
                      as CuisineType,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateDeliveryServiceInputImplCopyWith<$Res>
    implements $CreateDeliveryServiceInputCopyWith<$Res> {
  factory _$$CreateDeliveryServiceInputImplCopyWith(
    _$CreateDeliveryServiceInputImpl value,
    $Res Function(_$CreateDeliveryServiceInputImpl) then,
  ) = __$$CreateDeliveryServiceInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, CuisineType cuisine});
}

/// @nodoc
class __$$CreateDeliveryServiceInputImplCopyWithImpl<$Res>
    extends
        _$CreateDeliveryServiceInputCopyWithImpl<
          $Res,
          _$CreateDeliveryServiceInputImpl
        >
    implements _$$CreateDeliveryServiceInputImplCopyWith<$Res> {
  __$$CreateDeliveryServiceInputImplCopyWithImpl(
    _$CreateDeliveryServiceInputImpl _value,
    $Res Function(_$CreateDeliveryServiceInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateDeliveryServiceInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? cuisine = null}) {
    return _then(
      _$CreateDeliveryServiceInputImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        cuisine: null == cuisine
            ? _value.cuisine
            : cuisine // ignore: cast_nullable_to_non_nullable
                  as CuisineType,
      ),
    );
  }
}

/// @nodoc

class _$CreateDeliveryServiceInputImpl extends _CreateDeliveryServiceInput {
  const _$CreateDeliveryServiceInputImpl({
    required this.name,
    required this.cuisine,
  }) : super._();

  @override
  final String name;
  @override
  final CuisineType cuisine;

  @override
  String toString() {
    return 'CreateDeliveryServiceInput(name: $name, cuisine: $cuisine)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateDeliveryServiceInputImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cuisine, cuisine) || other.cuisine == cuisine));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, cuisine);

  /// Create a copy of CreateDeliveryServiceInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateDeliveryServiceInputImplCopyWith<_$CreateDeliveryServiceInputImpl>
  get copyWith =>
      __$$CreateDeliveryServiceInputImplCopyWithImpl<
        _$CreateDeliveryServiceInputImpl
      >(this, _$identity);
}

abstract class _CreateDeliveryServiceInput extends CreateDeliveryServiceInput {
  const factory _CreateDeliveryServiceInput({
    required final String name,
    required final CuisineType cuisine,
  }) = _$CreateDeliveryServiceInputImpl;
  const _CreateDeliveryServiceInput._() : super._();

  @override
  String get name;
  @override
  CuisineType get cuisine;

  /// Create a copy of CreateDeliveryServiceInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateDeliveryServiceInputImplCopyWith<_$CreateDeliveryServiceInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateDeliveryServiceInput {
  String? get name => throw _privateConstructorUsedError;
  CuisineType? get cuisine => throw _privateConstructorUsedError;

  /// Create a copy of UpdateDeliveryServiceInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateDeliveryServiceInputCopyWith<UpdateDeliveryServiceInput>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateDeliveryServiceInputCopyWith<$Res> {
  factory $UpdateDeliveryServiceInputCopyWith(
    UpdateDeliveryServiceInput value,
    $Res Function(UpdateDeliveryServiceInput) then,
  ) =
      _$UpdateDeliveryServiceInputCopyWithImpl<
        $Res,
        UpdateDeliveryServiceInput
      >;
  @useResult
  $Res call({String? name, CuisineType? cuisine});
}

/// @nodoc
class _$UpdateDeliveryServiceInputCopyWithImpl<
  $Res,
  $Val extends UpdateDeliveryServiceInput
>
    implements $UpdateDeliveryServiceInputCopyWith<$Res> {
  _$UpdateDeliveryServiceInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateDeliveryServiceInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = freezed, Object? cuisine = freezed}) {
    return _then(
      _value.copyWith(
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            cuisine: freezed == cuisine
                ? _value.cuisine
                : cuisine // ignore: cast_nullable_to_non_nullable
                      as CuisineType?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateDeliveryServiceInputImplCopyWith<$Res>
    implements $UpdateDeliveryServiceInputCopyWith<$Res> {
  factory _$$UpdateDeliveryServiceInputImplCopyWith(
    _$UpdateDeliveryServiceInputImpl value,
    $Res Function(_$UpdateDeliveryServiceInputImpl) then,
  ) = __$$UpdateDeliveryServiceInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, CuisineType? cuisine});
}

/// @nodoc
class __$$UpdateDeliveryServiceInputImplCopyWithImpl<$Res>
    extends
        _$UpdateDeliveryServiceInputCopyWithImpl<
          $Res,
          _$UpdateDeliveryServiceInputImpl
        >
    implements _$$UpdateDeliveryServiceInputImplCopyWith<$Res> {
  __$$UpdateDeliveryServiceInputImplCopyWithImpl(
    _$UpdateDeliveryServiceInputImpl _value,
    $Res Function(_$UpdateDeliveryServiceInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateDeliveryServiceInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = freezed, Object? cuisine = freezed}) {
    return _then(
      _$UpdateDeliveryServiceInputImpl(
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        cuisine: freezed == cuisine
            ? _value.cuisine
            : cuisine // ignore: cast_nullable_to_non_nullable
                  as CuisineType?,
      ),
    );
  }
}

/// @nodoc

class _$UpdateDeliveryServiceInputImpl extends _UpdateDeliveryServiceInput {
  const _$UpdateDeliveryServiceInputImpl({this.name, this.cuisine}) : super._();

  @override
  final String? name;
  @override
  final CuisineType? cuisine;

  @override
  String toString() {
    return 'UpdateDeliveryServiceInput(name: $name, cuisine: $cuisine)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDeliveryServiceInputImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cuisine, cuisine) || other.cuisine == cuisine));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, cuisine);

  /// Create a copy of UpdateDeliveryServiceInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDeliveryServiceInputImplCopyWith<_$UpdateDeliveryServiceInputImpl>
  get copyWith =>
      __$$UpdateDeliveryServiceInputImplCopyWithImpl<
        _$UpdateDeliveryServiceInputImpl
      >(this, _$identity);
}

abstract class _UpdateDeliveryServiceInput extends UpdateDeliveryServiceInput {
  const factory _UpdateDeliveryServiceInput({
    final String? name,
    final CuisineType? cuisine,
  }) = _$UpdateDeliveryServiceInputImpl;
  const _UpdateDeliveryServiceInput._() : super._();

  @override
  String? get name;
  @override
  CuisineType? get cuisine;

  /// Create a copy of UpdateDeliveryServiceInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateDeliveryServiceInputImplCopyWith<_$UpdateDeliveryServiceInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeliveryServiceWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryServiceWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryServiceWhereUniqueInputCopyWith<DeliveryServiceWhereUniqueInput>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryServiceWhereUniqueInputCopyWith<$Res> {
  factory $DeliveryServiceWhereUniqueInputCopyWith(
    DeliveryServiceWhereUniqueInput value,
    $Res Function(DeliveryServiceWhereUniqueInput) then,
  ) =
      _$DeliveryServiceWhereUniqueInputCopyWithImpl<
        $Res,
        DeliveryServiceWhereUniqueInput
      >;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$DeliveryServiceWhereUniqueInputCopyWithImpl<
  $Res,
  $Val extends DeliveryServiceWhereUniqueInput
>
    implements $DeliveryServiceWhereUniqueInputCopyWith<$Res> {
  _$DeliveryServiceWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryServiceWhereUniqueInput
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
abstract class _$$DeliveryServiceWhereUniqueInputImplCopyWith<$Res>
    implements $DeliveryServiceWhereUniqueInputCopyWith<$Res> {
  factory _$$DeliveryServiceWhereUniqueInputImplCopyWith(
    _$DeliveryServiceWhereUniqueInputImpl value,
    $Res Function(_$DeliveryServiceWhereUniqueInputImpl) then,
  ) = __$$DeliveryServiceWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$DeliveryServiceWhereUniqueInputImplCopyWithImpl<$Res>
    extends
        _$DeliveryServiceWhereUniqueInputCopyWithImpl<
          $Res,
          _$DeliveryServiceWhereUniqueInputImpl
        >
    implements _$$DeliveryServiceWhereUniqueInputImplCopyWith<$Res> {
  __$$DeliveryServiceWhereUniqueInputImplCopyWithImpl(
    _$DeliveryServiceWhereUniqueInputImpl _value,
    $Res Function(_$DeliveryServiceWhereUniqueInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeliveryServiceWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed}) {
    return _then(
      _$DeliveryServiceWhereUniqueInputImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$DeliveryServiceWhereUniqueInputImpl
    extends _DeliveryServiceWhereUniqueInput {
  const _$DeliveryServiceWhereUniqueInputImpl({this.id}) : super._();

  @override
  final String? id;

  @override
  String toString() {
    return 'DeliveryServiceWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryServiceWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of DeliveryServiceWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryServiceWhereUniqueInputImplCopyWith<
    _$DeliveryServiceWhereUniqueInputImpl
  >
  get copyWith =>
      __$$DeliveryServiceWhereUniqueInputImplCopyWithImpl<
        _$DeliveryServiceWhereUniqueInputImpl
      >(this, _$identity);
}

abstract class _DeliveryServiceWhereUniqueInput
    extends DeliveryServiceWhereUniqueInput {
  const factory _DeliveryServiceWhereUniqueInput({final String? id}) =
      _$DeliveryServiceWhereUniqueInputImpl;
  const _DeliveryServiceWhereUniqueInput._() : super._();

  @override
  String? get id;

  /// Create a copy of DeliveryServiceWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryServiceWhereUniqueInputImplCopyWith<
    _$DeliveryServiceWhereUniqueInputImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeliveryServiceWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get name => throw _privateConstructorUsedError;
  CuisineTypeFilter? get cuisine => throw _privateConstructorUsedError;
  MenuItemListRelationFilter? get menu => throw _privateConstructorUsedError;
  List<DeliveryServiceWhereInput>? get AND =>
      throw _privateConstructorUsedError;
  List<DeliveryServiceWhereInput>? get OR => throw _privateConstructorUsedError;
  DeliveryServiceWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryServiceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryServiceWhereInputCopyWith<DeliveryServiceWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryServiceWhereInputCopyWith<$Res> {
  factory $DeliveryServiceWhereInputCopyWith(
    DeliveryServiceWhereInput value,
    $Res Function(DeliveryServiceWhereInput) then,
  ) = _$DeliveryServiceWhereInputCopyWithImpl<$Res, DeliveryServiceWhereInput>;
  @useResult
  $Res call({
    StringFilter? id,
    StringFilter? name,
    CuisineTypeFilter? cuisine,
    MenuItemListRelationFilter? menu,
    List<DeliveryServiceWhereInput>? AND,
    List<DeliveryServiceWhereInput>? OR,
    DeliveryServiceWhereInput? NOT,
  });

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get name;
  $CuisineTypeFilterCopyWith<$Res>? get cuisine;
  $MenuItemListRelationFilterCopyWith<$Res>? get menu;
  $DeliveryServiceWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$DeliveryServiceWhereInputCopyWithImpl<
  $Res,
  $Val extends DeliveryServiceWhereInput
>
    implements $DeliveryServiceWhereInputCopyWith<$Res> {
  _$DeliveryServiceWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryServiceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? cuisine = freezed,
    Object? menu = freezed,
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
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as StringFilter?,
            cuisine: freezed == cuisine
                ? _value.cuisine
                : cuisine // ignore: cast_nullable_to_non_nullable
                      as CuisineTypeFilter?,
            menu: freezed == menu
                ? _value.menu
                : menu // ignore: cast_nullable_to_non_nullable
                      as MenuItemListRelationFilter?,
            AND: freezed == AND
                ? _value.AND
                : AND // ignore: cast_nullable_to_non_nullable
                      as List<DeliveryServiceWhereInput>?,
            OR: freezed == OR
                ? _value.OR
                : OR // ignore: cast_nullable_to_non_nullable
                      as List<DeliveryServiceWhereInput>?,
            NOT: freezed == NOT
                ? _value.NOT
                : NOT // ignore: cast_nullable_to_non_nullable
                      as DeliveryServiceWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of DeliveryServiceWhereInput
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

  /// Create a copy of DeliveryServiceWhereInput
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

  /// Create a copy of DeliveryServiceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CuisineTypeFilterCopyWith<$Res>? get cuisine {
    if (_value.cuisine == null) {
      return null;
    }

    return $CuisineTypeFilterCopyWith<$Res>(_value.cuisine!, (value) {
      return _then(_value.copyWith(cuisine: value) as $Val);
    });
  }

  /// Create a copy of DeliveryServiceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MenuItemListRelationFilterCopyWith<$Res>? get menu {
    if (_value.menu == null) {
      return null;
    }

    return $MenuItemListRelationFilterCopyWith<$Res>(_value.menu!, (value) {
      return _then(_value.copyWith(menu: value) as $Val);
    });
  }

  /// Create a copy of DeliveryServiceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliveryServiceWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $DeliveryServiceWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeliveryServiceWhereInputImplCopyWith<$Res>
    implements $DeliveryServiceWhereInputCopyWith<$Res> {
  factory _$$DeliveryServiceWhereInputImplCopyWith(
    _$DeliveryServiceWhereInputImpl value,
    $Res Function(_$DeliveryServiceWhereInputImpl) then,
  ) = __$$DeliveryServiceWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    StringFilter? id,
    StringFilter? name,
    CuisineTypeFilter? cuisine,
    MenuItemListRelationFilter? menu,
    List<DeliveryServiceWhereInput>? AND,
    List<DeliveryServiceWhereInput>? OR,
    DeliveryServiceWhereInput? NOT,
  });

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get name;
  @override
  $CuisineTypeFilterCopyWith<$Res>? get cuisine;
  @override
  $MenuItemListRelationFilterCopyWith<$Res>? get menu;
  @override
  $DeliveryServiceWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$DeliveryServiceWhereInputImplCopyWithImpl<$Res>
    extends
        _$DeliveryServiceWhereInputCopyWithImpl<
          $Res,
          _$DeliveryServiceWhereInputImpl
        >
    implements _$$DeliveryServiceWhereInputImplCopyWith<$Res> {
  __$$DeliveryServiceWhereInputImplCopyWithImpl(
    _$DeliveryServiceWhereInputImpl _value,
    $Res Function(_$DeliveryServiceWhereInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeliveryServiceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? cuisine = freezed,
    Object? menu = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(
      _$DeliveryServiceWhereInputImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as StringFilter?,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as StringFilter?,
        cuisine: freezed == cuisine
            ? _value.cuisine
            : cuisine // ignore: cast_nullable_to_non_nullable
                  as CuisineTypeFilter?,
        menu: freezed == menu
            ? _value.menu
            : menu // ignore: cast_nullable_to_non_nullable
                  as MenuItemListRelationFilter?,
        AND: freezed == AND
            ? _value._AND
            : AND // ignore: cast_nullable_to_non_nullable
                  as List<DeliveryServiceWhereInput>?,
        OR: freezed == OR
            ? _value._OR
            : OR // ignore: cast_nullable_to_non_nullable
                  as List<DeliveryServiceWhereInput>?,
        NOT: freezed == NOT
            ? _value.NOT
            : NOT // ignore: cast_nullable_to_non_nullable
                  as DeliveryServiceWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$DeliveryServiceWhereInputImpl extends _DeliveryServiceWhereInput {
  const _$DeliveryServiceWhereInputImpl({
    this.id,
    this.name,
    this.cuisine,
    this.menu,
    final List<DeliveryServiceWhereInput>? AND,
    final List<DeliveryServiceWhereInput>? OR,
    this.NOT,
  }) : _AND = AND,
       _OR = OR,
       super._();

  @override
  final StringFilter? id;
  @override
  final StringFilter? name;
  @override
  final CuisineTypeFilter? cuisine;
  @override
  final MenuItemListRelationFilter? menu;
  final List<DeliveryServiceWhereInput>? _AND;
  @override
  List<DeliveryServiceWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DeliveryServiceWhereInput>? _OR;
  @override
  List<DeliveryServiceWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DeliveryServiceWhereInput? NOT;

  @override
  String toString() {
    return 'DeliveryServiceWhereInput(id: $id, name: $name, cuisine: $cuisine, menu: $menu, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryServiceWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cuisine, cuisine) || other.cuisine == cuisine) &&
            (identical(other.menu, menu) || other.menu == menu) &&
            const DeepCollectionEquality().equals(other._AND, _AND) &&
            const DeepCollectionEquality().equals(other._OR, _OR) &&
            (identical(other.NOT, NOT) || other.NOT == NOT));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    cuisine,
    menu,
    const DeepCollectionEquality().hash(_AND),
    const DeepCollectionEquality().hash(_OR),
    NOT,
  );

  /// Create a copy of DeliveryServiceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryServiceWhereInputImplCopyWith<_$DeliveryServiceWhereInputImpl>
  get copyWith =>
      __$$DeliveryServiceWhereInputImplCopyWithImpl<
        _$DeliveryServiceWhereInputImpl
      >(this, _$identity);
}

abstract class _DeliveryServiceWhereInput extends DeliveryServiceWhereInput {
  const factory _DeliveryServiceWhereInput({
    final StringFilter? id,
    final StringFilter? name,
    final CuisineTypeFilter? cuisine,
    final MenuItemListRelationFilter? menu,
    final List<DeliveryServiceWhereInput>? AND,
    final List<DeliveryServiceWhereInput>? OR,
    final DeliveryServiceWhereInput? NOT,
  }) = _$DeliveryServiceWhereInputImpl;
  const _DeliveryServiceWhereInput._() : super._();

  @override
  StringFilter? get id;
  @override
  StringFilter? get name;
  @override
  CuisineTypeFilter? get cuisine;
  @override
  MenuItemListRelationFilter? get menu;
  @override
  List<DeliveryServiceWhereInput>? get AND;
  @override
  List<DeliveryServiceWhereInput>? get OR;
  @override
  DeliveryServiceWhereInput? get NOT;

  /// Create a copy of DeliveryServiceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryServiceWhereInputImplCopyWith<_$DeliveryServiceWhereInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeliveryServiceListRelationFilter {
  DeliveryServiceWhereInput? get some => throw _privateConstructorUsedError;
  DeliveryServiceWhereInput? get every => throw _privateConstructorUsedError;
  DeliveryServiceWhereInput? get none => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryServiceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryServiceListRelationFilterCopyWith<DeliveryServiceListRelationFilter>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryServiceListRelationFilterCopyWith<$Res> {
  factory $DeliveryServiceListRelationFilterCopyWith(
    DeliveryServiceListRelationFilter value,
    $Res Function(DeliveryServiceListRelationFilter) then,
  ) =
      _$DeliveryServiceListRelationFilterCopyWithImpl<
        $Res,
        DeliveryServiceListRelationFilter
      >;
  @useResult
  $Res call({
    DeliveryServiceWhereInput? some,
    DeliveryServiceWhereInput? every,
    DeliveryServiceWhereInput? none,
  });

  $DeliveryServiceWhereInputCopyWith<$Res>? get some;
  $DeliveryServiceWhereInputCopyWith<$Res>? get every;
  $DeliveryServiceWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$DeliveryServiceListRelationFilterCopyWithImpl<
  $Res,
  $Val extends DeliveryServiceListRelationFilter
>
    implements $DeliveryServiceListRelationFilterCopyWith<$Res> {
  _$DeliveryServiceListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryServiceListRelationFilter
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
                      as DeliveryServiceWhereInput?,
            every: freezed == every
                ? _value.every
                : every // ignore: cast_nullable_to_non_nullable
                      as DeliveryServiceWhereInput?,
            none: freezed == none
                ? _value.none
                : none // ignore: cast_nullable_to_non_nullable
                      as DeliveryServiceWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of DeliveryServiceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliveryServiceWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $DeliveryServiceWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of DeliveryServiceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliveryServiceWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $DeliveryServiceWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of DeliveryServiceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliveryServiceWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $DeliveryServiceWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeliveryServiceListRelationFilterImplCopyWith<$Res>
    implements $DeliveryServiceListRelationFilterCopyWith<$Res> {
  factory _$$DeliveryServiceListRelationFilterImplCopyWith(
    _$DeliveryServiceListRelationFilterImpl value,
    $Res Function(_$DeliveryServiceListRelationFilterImpl) then,
  ) = __$$DeliveryServiceListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DeliveryServiceWhereInput? some,
    DeliveryServiceWhereInput? every,
    DeliveryServiceWhereInput? none,
  });

  @override
  $DeliveryServiceWhereInputCopyWith<$Res>? get some;
  @override
  $DeliveryServiceWhereInputCopyWith<$Res>? get every;
  @override
  $DeliveryServiceWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$DeliveryServiceListRelationFilterImplCopyWithImpl<$Res>
    extends
        _$DeliveryServiceListRelationFilterCopyWithImpl<
          $Res,
          _$DeliveryServiceListRelationFilterImpl
        >
    implements _$$DeliveryServiceListRelationFilterImplCopyWith<$Res> {
  __$$DeliveryServiceListRelationFilterImplCopyWithImpl(
    _$DeliveryServiceListRelationFilterImpl _value,
    $Res Function(_$DeliveryServiceListRelationFilterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeliveryServiceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(
      _$DeliveryServiceListRelationFilterImpl(
        some: freezed == some
            ? _value.some
            : some // ignore: cast_nullable_to_non_nullable
                  as DeliveryServiceWhereInput?,
        every: freezed == every
            ? _value.every
            : every // ignore: cast_nullable_to_non_nullable
                  as DeliveryServiceWhereInput?,
        none: freezed == none
            ? _value.none
            : none // ignore: cast_nullable_to_non_nullable
                  as DeliveryServiceWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$DeliveryServiceListRelationFilterImpl
    extends _DeliveryServiceListRelationFilter {
  const _$DeliveryServiceListRelationFilterImpl({
    this.some,
    this.every,
    this.none,
  }) : super._();

  @override
  final DeliveryServiceWhereInput? some;
  @override
  final DeliveryServiceWhereInput? every;
  @override
  final DeliveryServiceWhereInput? none;

  @override
  String toString() {
    return 'DeliveryServiceListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryServiceListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of DeliveryServiceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryServiceListRelationFilterImplCopyWith<
    _$DeliveryServiceListRelationFilterImpl
  >
  get copyWith =>
      __$$DeliveryServiceListRelationFilterImplCopyWithImpl<
        _$DeliveryServiceListRelationFilterImpl
      >(this, _$identity);
}

abstract class _DeliveryServiceListRelationFilter
    extends DeliveryServiceListRelationFilter {
  const factory _DeliveryServiceListRelationFilter({
    final DeliveryServiceWhereInput? some,
    final DeliveryServiceWhereInput? every,
    final DeliveryServiceWhereInput? none,
  }) = _$DeliveryServiceListRelationFilterImpl;
  const _DeliveryServiceListRelationFilter._() : super._();

  @override
  DeliveryServiceWhereInput? get some;
  @override
  DeliveryServiceWhereInput? get every;
  @override
  DeliveryServiceWhereInput? get none;

  /// Create a copy of DeliveryServiceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryServiceListRelationFilterImplCopyWith<
    _$DeliveryServiceListRelationFilterImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeliveryServiceRelationFilter {
  @JsonKey(name: 'is')
  DeliveryServiceWhereInput? get is_ => throw _privateConstructorUsedError;
  DeliveryServiceWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryServiceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryServiceRelationFilterCopyWith<DeliveryServiceRelationFilter>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryServiceRelationFilterCopyWith<$Res> {
  factory $DeliveryServiceRelationFilterCopyWith(
    DeliveryServiceRelationFilter value,
    $Res Function(DeliveryServiceRelationFilter) then,
  ) =
      _$DeliveryServiceRelationFilterCopyWithImpl<
        $Res,
        DeliveryServiceRelationFilter
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'is') DeliveryServiceWhereInput? is_,
    DeliveryServiceWhereInput? isNot,
  });

  $DeliveryServiceWhereInputCopyWith<$Res>? get is_;
  $DeliveryServiceWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$DeliveryServiceRelationFilterCopyWithImpl<
  $Res,
  $Val extends DeliveryServiceRelationFilter
>
    implements $DeliveryServiceRelationFilterCopyWith<$Res> {
  _$DeliveryServiceRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryServiceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? is_ = freezed, Object? isNot = freezed}) {
    return _then(
      _value.copyWith(
            is_: freezed == is_
                ? _value.is_
                : is_ // ignore: cast_nullable_to_non_nullable
                      as DeliveryServiceWhereInput?,
            isNot: freezed == isNot
                ? _value.isNot
                : isNot // ignore: cast_nullable_to_non_nullable
                      as DeliveryServiceWhereInput?,
          )
          as $Val,
    );
  }

  /// Create a copy of DeliveryServiceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliveryServiceWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $DeliveryServiceWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of DeliveryServiceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliveryServiceWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $DeliveryServiceWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeliveryServiceRelationFilterImplCopyWith<$Res>
    implements $DeliveryServiceRelationFilterCopyWith<$Res> {
  factory _$$DeliveryServiceRelationFilterImplCopyWith(
    _$DeliveryServiceRelationFilterImpl value,
    $Res Function(_$DeliveryServiceRelationFilterImpl) then,
  ) = __$$DeliveryServiceRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'is') DeliveryServiceWhereInput? is_,
    DeliveryServiceWhereInput? isNot,
  });

  @override
  $DeliveryServiceWhereInputCopyWith<$Res>? get is_;
  @override
  $DeliveryServiceWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$DeliveryServiceRelationFilterImplCopyWithImpl<$Res>
    extends
        _$DeliveryServiceRelationFilterCopyWithImpl<
          $Res,
          _$DeliveryServiceRelationFilterImpl
        >
    implements _$$DeliveryServiceRelationFilterImplCopyWith<$Res> {
  __$$DeliveryServiceRelationFilterImplCopyWithImpl(
    _$DeliveryServiceRelationFilterImpl _value,
    $Res Function(_$DeliveryServiceRelationFilterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeliveryServiceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? is_ = freezed, Object? isNot = freezed}) {
    return _then(
      _$DeliveryServiceRelationFilterImpl(
        is_: freezed == is_
            ? _value.is_
            : is_ // ignore: cast_nullable_to_non_nullable
                  as DeliveryServiceWhereInput?,
        isNot: freezed == isNot
            ? _value.isNot
            : isNot // ignore: cast_nullable_to_non_nullable
                  as DeliveryServiceWhereInput?,
      ),
    );
  }
}

/// @nodoc

class _$DeliveryServiceRelationFilterImpl
    extends _DeliveryServiceRelationFilter {
  const _$DeliveryServiceRelationFilterImpl({
    @JsonKey(name: 'is') this.is_,
    this.isNot,
  }) : super._();

  @override
  @JsonKey(name: 'is')
  final DeliveryServiceWhereInput? is_;
  @override
  final DeliveryServiceWhereInput? isNot;

  @override
  String toString() {
    return 'DeliveryServiceRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryServiceRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of DeliveryServiceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryServiceRelationFilterImplCopyWith<
    _$DeliveryServiceRelationFilterImpl
  >
  get copyWith =>
      __$$DeliveryServiceRelationFilterImplCopyWithImpl<
        _$DeliveryServiceRelationFilterImpl
      >(this, _$identity);
}

abstract class _DeliveryServiceRelationFilter
    extends DeliveryServiceRelationFilter {
  const factory _DeliveryServiceRelationFilter({
    @JsonKey(name: 'is') final DeliveryServiceWhereInput? is_,
    final DeliveryServiceWhereInput? isNot,
  }) = _$DeliveryServiceRelationFilterImpl;
  const _DeliveryServiceRelationFilter._() : super._();

  @override
  @JsonKey(name: 'is')
  DeliveryServiceWhereInput? get is_;
  @override
  DeliveryServiceWhereInput? get isNot;

  /// Create a copy of DeliveryServiceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryServiceRelationFilterImplCopyWith<
    _$DeliveryServiceRelationFilterImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeliveryServiceOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get name => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryServiceOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryServiceOrderByInputCopyWith<DeliveryServiceOrderByInput>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryServiceOrderByInputCopyWith<$Res> {
  factory $DeliveryServiceOrderByInputCopyWith(
    DeliveryServiceOrderByInput value,
    $Res Function(DeliveryServiceOrderByInput) then,
  ) =
      _$DeliveryServiceOrderByInputCopyWithImpl<
        $Res,
        DeliveryServiceOrderByInput
      >;
  @useResult
  $Res call({SortOrder? id, SortOrder? name});
}

/// @nodoc
class _$DeliveryServiceOrderByInputCopyWithImpl<
  $Res,
  $Val extends DeliveryServiceOrderByInput
>
    implements $DeliveryServiceOrderByInputCopyWith<$Res> {
  _$DeliveryServiceOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryServiceOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed, Object? name = freezed}) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as SortOrder?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DeliveryServiceOrderByInputImplCopyWith<$Res>
    implements $DeliveryServiceOrderByInputCopyWith<$Res> {
  factory _$$DeliveryServiceOrderByInputImplCopyWith(
    _$DeliveryServiceOrderByInputImpl value,
    $Res Function(_$DeliveryServiceOrderByInputImpl) then,
  ) = __$$DeliveryServiceOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SortOrder? id, SortOrder? name});
}

/// @nodoc
class __$$DeliveryServiceOrderByInputImplCopyWithImpl<$Res>
    extends
        _$DeliveryServiceOrderByInputCopyWithImpl<
          $Res,
          _$DeliveryServiceOrderByInputImpl
        >
    implements _$$DeliveryServiceOrderByInputImplCopyWith<$Res> {
  __$$DeliveryServiceOrderByInputImplCopyWithImpl(
    _$DeliveryServiceOrderByInputImpl _value,
    $Res Function(_$DeliveryServiceOrderByInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeliveryServiceOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed, Object? name = freezed}) {
    return _then(
      _$DeliveryServiceOrderByInputImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as SortOrder?,
      ),
    );
  }
}

/// @nodoc

class _$DeliveryServiceOrderByInputImpl extends _DeliveryServiceOrderByInput {
  const _$DeliveryServiceOrderByInputImpl({this.id, this.name}) : super._();

  @override
  final SortOrder? id;
  @override
  final SortOrder? name;

  @override
  String toString() {
    return 'DeliveryServiceOrderByInput(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryServiceOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of DeliveryServiceOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryServiceOrderByInputImplCopyWith<_$DeliveryServiceOrderByInputImpl>
  get copyWith =>
      __$$DeliveryServiceOrderByInputImplCopyWithImpl<
        _$DeliveryServiceOrderByInputImpl
      >(this, _$identity);
}

abstract class _DeliveryServiceOrderByInput
    extends DeliveryServiceOrderByInput {
  const factory _DeliveryServiceOrderByInput({
    final SortOrder? id,
    final SortOrder? name,
  }) = _$DeliveryServiceOrderByInputImpl;
  const _DeliveryServiceOrderByInput._() : super._();

  @override
  SortOrder? get id;
  @override
  SortOrder? get name;

  /// Create a copy of DeliveryServiceOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryServiceOrderByInputImplCopyWith<_$DeliveryServiceOrderByInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

// /// Generated filter types for type-safe queries

import 'package:freezed_annotation/freezed_annotation.dart';
import 'models/cuisine_type.dart';
part 'filters.freezed.dart';

/// Filter for String fields
@freezed
class StringFilter with _$StringFilter {
  const StringFilter._();

  const factory StringFilter({
    String? equals,
    String? not,
    @JsonKey(name: 'in') List<String>? in_,
    List<String>? notIn,
    String? contains,
    String? startsWith,
    String? endsWith,
    String? lt,
    String? lte,
    String? gt,
    String? gte,
  }) = _StringFilter;

  factory StringFilter.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('StringFilter.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (equals != null) 'equals': equals,
      if (not != null) 'not': not,
      if (in_ != null) 'in': in_,
      if (notIn != null) 'notIn': notIn,
      if (contains != null) 'contains': contains,
      if (startsWith != null) 'startsWith': startsWith,
      if (endsWith != null) 'endsWith': endsWith,
      if (lt != null) 'lt': lt,
      if (lte != null) 'lte': lte,
      if (gt != null) 'gt': gt,
      if (gte != null) 'gte': gte,
    };
  }
}

/// Filter for Int fields
@freezed
class IntFilter with _$IntFilter {
  const IntFilter._();

  const factory IntFilter({
    int? equals,
    int? not,
    @JsonKey(name: 'in') List<int>? in_,
    List<int>? notIn,
    int? lt,
    int? lte,
    int? gt,
    int? gte,
  }) = _IntFilter;

  factory IntFilter.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('IntFilter.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (equals != null) 'equals': equals,
      if (not != null) 'not': not,
      if (in_ != null) 'in': in_,
      if (notIn != null) 'notIn': notIn,
      if (lt != null) 'lt': lt,
      if (lte != null) 'lte': lte,
      if (gt != null) 'gt': gt,
      if (gte != null) 'gte': gte,
    };
  }
}

/// Filter for Float/Decimal fields
@freezed
class FloatFilter with _$FloatFilter {
  const FloatFilter._();

  const factory FloatFilter({
    double? equals,
    double? not,
    @JsonKey(name: 'in') List<double>? in_,
    List<double>? notIn,
    double? lt,
    double? lte,
    double? gt,
    double? gte,
  }) = _FloatFilter;

  factory FloatFilter.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('FloatFilter.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (equals != null) 'equals': equals,
      if (not != null) 'not': not,
      if (in_ != null) 'in': in_,
      if (notIn != null) 'notIn': notIn,
      if (lt != null) 'lt': lt,
      if (lte != null) 'lte': lte,
      if (gt != null) 'gt': gt,
      if (gte != null) 'gte': gte,
    };
  }
}

/// Filter for Boolean fields
@freezed
class BooleanFilter with _$BooleanFilter {
  const BooleanFilter._();

  const factory BooleanFilter({bool? equals, bool? not}) = _BooleanFilter;

  factory BooleanFilter.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('BooleanFilter.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (equals != null) 'equals': equals,
      if (not != null) 'not': not,
    };
  }
}

/// Filter for DateTime fields
@freezed
class DateTimeFilter with _$DateTimeFilter {
  const DateTimeFilter._();

  const factory DateTimeFilter({
    DateTime? equals,
    DateTime? not,
    @JsonKey(name: 'in') List<DateTime>? in_,
    List<DateTime>? notIn,
    DateTime? lt,
    DateTime? lte,
    DateTime? gt,
    DateTime? gte,
  }) = _DateTimeFilter;

  factory DateTimeFilter.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('DateTimeFilter.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (equals != null) 'equals': equals!.toIso8601String(),
      if (not != null) 'not': not!.toIso8601String(),
      if (in_ != null) 'in': in_!.map((e) => e.toIso8601String()).toList(),
      if (notIn != null)
        'notIn': notIn!.map((e) => e.toIso8601String()).toList(),
      if (lt != null) 'lt': lt!.toIso8601String(),
      if (lte != null) 'lte': lte!.toIso8601String(),
      if (gt != null) 'gt': gt!.toIso8601String(),
      if (gte != null) 'gte': gte!.toIso8601String(),
    };
  }
}

/// Filter for CuisineType fields
@freezed
class CuisineTypeFilter with _$CuisineTypeFilter {
  const CuisineTypeFilter._();

  const factory CuisineTypeFilter({
    CuisineType? equals,
    CuisineType? not,
    @JsonKey(name: 'in') List<CuisineType>? in_,
    List<CuisineType>? notIn,
  }) = _CuisineTypeFilter;

  factory CuisineTypeFilter.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('CuisineTypeFilter.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (equals != null) 'equals': equals!.toJson(),
      if (not != null) 'not': not!.toJson(),
      if (in_ != null) 'in': in_!.map((e) => e.toJson()).toList(),
      if (notIn != null) 'notIn': notIn!.map((e) => e.toJson()).toList(),
    };
  }
}

/// Filter for String list fields
@freezed
class StringListFilter with _$StringListFilter {
  const StringListFilter._();

  const factory StringListFilter({
    String? has,
    List<String>? hasEvery,
    List<String>? hasSome,
    bool? isEmpty,
  }) = _StringListFilter;

  factory StringListFilter.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('StringListFilter.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (has != null) 'has': has,
      if (hasEvery != null) 'hasEvery': hasEvery,
      if (hasSome != null) 'hasSome': hasSome,
      if (isEmpty != null) 'isEmpty': isEmpty,
    };
  }
}

/// Filter for Int list fields
@freezed
class IntListFilter with _$IntListFilter {
  const IntListFilter._();

  const factory IntListFilter({
    int? has,
    List<int>? hasEvery,
    List<int>? hasSome,
    bool? isEmpty,
  }) = _IntListFilter;

  factory IntListFilter.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('IntListFilter.fromJson not needed');
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (has != null) 'has': has,
      if (hasEvery != null) 'hasEvery': hasEvery,
      if (hasSome != null) 'hasSome': hasSome,
      if (isEmpty != null) 'isEmpty': isEmpty,
    };
  }
}

/// Sort order for ordering results
enum SortOrder {
  @JsonValue('asc')
  asc,
  @JsonValue('desc')
  desc,
}

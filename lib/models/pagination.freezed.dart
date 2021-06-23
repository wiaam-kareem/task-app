// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pagination _$PaginationFromJson(Map<String, dynamic> json) {
  return _Pagination.fromJson(json);
}

/// @nodoc
class _$PaginationTearOff {
  const _$PaginationTearOff();

  _Pagination call(@JsonKey(defaultValue: 0) int? step,
      @JsonKey(defaultValue: 0) int? lastStep) {
    return _Pagination(
      step,
      lastStep,
    );
  }

  Pagination fromJson(Map<String, Object> json) {
    return Pagination.fromJson(json);
  }
}

/// @nodoc
const $Pagination = _$PaginationTearOff();

/// @nodoc
mixin _$Pagination {
  @JsonKey(defaultValue: 0)
  int? get step => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int? get lastStep => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationCopyWith<Pagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationCopyWith<$Res> {
  factory $PaginationCopyWith(
          Pagination value, $Res Function(Pagination) then) =
      _$PaginationCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(defaultValue: 0) int? step,
      @JsonKey(defaultValue: 0) int? lastStep});
}

/// @nodoc
class _$PaginationCopyWithImpl<$Res> implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._value, this._then);

  final Pagination _value;
  // ignore: unused_field
  final $Res Function(Pagination) _then;

  @override
  $Res call({
    Object? step = freezed,
    Object? lastStep = freezed,
  }) {
    return _then(_value.copyWith(
      step: step == freezed
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int?,
      lastStep: lastStep == freezed
          ? _value.lastStep
          : lastStep // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$PaginationCopyWith<$Res> implements $PaginationCopyWith<$Res> {
  factory _$PaginationCopyWith(
          _Pagination value, $Res Function(_Pagination) then) =
      __$PaginationCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(defaultValue: 0) int? step,
      @JsonKey(defaultValue: 0) int? lastStep});
}

/// @nodoc
class __$PaginationCopyWithImpl<$Res> extends _$PaginationCopyWithImpl<$Res>
    implements _$PaginationCopyWith<$Res> {
  __$PaginationCopyWithImpl(
      _Pagination _value, $Res Function(_Pagination) _then)
      : super(_value, (v) => _then(v as _Pagination));

  @override
  _Pagination get _value => super._value as _Pagination;

  @override
  $Res call({
    Object? step = freezed,
    Object? lastStep = freezed,
  }) {
    return _then(_Pagination(
      step == freezed
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int?,
      lastStep == freezed
          ? _value.lastStep
          : lastStep // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pagination implements _Pagination {
  const _$_Pagination(@JsonKey(defaultValue: 0) this.step,
      @JsonKey(defaultValue: 0) this.lastStep);

  factory _$_Pagination.fromJson(Map<String, dynamic> json) =>
      _$_$_PaginationFromJson(json);

  @override
  @JsonKey(defaultValue: 0)
  final int? step;
  @override
  @JsonKey(defaultValue: 0)
  final int? lastStep;

  @override
  String toString() {
    return 'Pagination(step: $step, lastStep: $lastStep)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Pagination &&
            (identical(other.step, step) ||
                const DeepCollectionEquality().equals(other.step, step)) &&
            (identical(other.lastStep, lastStep) ||
                const DeepCollectionEquality()
                    .equals(other.lastStep, lastStep)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(step) ^
      const DeepCollectionEquality().hash(lastStep);

  @JsonKey(ignore: true)
  @override
  _$PaginationCopyWith<_Pagination> get copyWith =>
      __$PaginationCopyWithImpl<_Pagination>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PaginationToJson(this);
  }
}

abstract class _Pagination implements Pagination {
  const factory _Pagination(@JsonKey(defaultValue: 0) int? step,
      @JsonKey(defaultValue: 0) int? lastStep) = _$_Pagination;

  factory _Pagination.fromJson(Map<String, dynamic> json) =
      _$_Pagination.fromJson;

  @override
  @JsonKey(defaultValue: 0)
  int? get step => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: 0)
  int? get lastStep => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PaginationCopyWith<_Pagination> get copyWith =>
      throw _privateConstructorUsedError;
}

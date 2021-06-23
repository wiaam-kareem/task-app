// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ticket_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TicketModel _$TicketModelFromJson(Map<String, dynamic> json) {
  return _TicketModel.fromJson(json);
}

/// @nodoc
class _$TicketModelTearOff {
  const _$TicketModelTearOff();

  _TicketModel call(int ticketId, int time, String employeeName, String address,
      String taskType, String dealerName, String phoneNumber) {
    return _TicketModel(
      ticketId,
      time,
      employeeName,
      address,
      taskType,
      dealerName,
      phoneNumber,
    );
  }

  TicketModel fromJson(Map<String, Object> json) {
    return TicketModel.fromJson(json);
  }
}

/// @nodoc
const $TicketModel = _$TicketModelTearOff();

/// @nodoc
mixin _$TicketModel {
  int get ticketId => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;
  String get employeeName => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get taskType => throw _privateConstructorUsedError;
  String get dealerName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketModelCopyWith<TicketModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketModelCopyWith<$Res> {
  factory $TicketModelCopyWith(
          TicketModel value, $Res Function(TicketModel) then) =
      _$TicketModelCopyWithImpl<$Res>;
  $Res call(
      {int ticketId,
      int time,
      String employeeName,
      String address,
      String taskType,
      String dealerName,
      String phoneNumber});
}

/// @nodoc
class _$TicketModelCopyWithImpl<$Res> implements $TicketModelCopyWith<$Res> {
  _$TicketModelCopyWithImpl(this._value, this._then);

  final TicketModel _value;
  // ignore: unused_field
  final $Res Function(TicketModel) _then;

  @override
  $Res call({
    Object? ticketId = freezed,
    Object? time = freezed,
    Object? employeeName = freezed,
    Object? address = freezed,
    Object? taskType = freezed,
    Object? dealerName = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      ticketId: ticketId == freezed
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as int,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      employeeName: employeeName == freezed
          ? _value.employeeName
          : employeeName // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      taskType: taskType == freezed
          ? _value.taskType
          : taskType // ignore: cast_nullable_to_non_nullable
              as String,
      dealerName: dealerName == freezed
          ? _value.dealerName
          : dealerName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TicketModelCopyWith<$Res>
    implements $TicketModelCopyWith<$Res> {
  factory _$TicketModelCopyWith(
          _TicketModel value, $Res Function(_TicketModel) then) =
      __$TicketModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int ticketId,
      int time,
      String employeeName,
      String address,
      String taskType,
      String dealerName,
      String phoneNumber});
}

/// @nodoc
class __$TicketModelCopyWithImpl<$Res> extends _$TicketModelCopyWithImpl<$Res>
    implements _$TicketModelCopyWith<$Res> {
  __$TicketModelCopyWithImpl(
      _TicketModel _value, $Res Function(_TicketModel) _then)
      : super(_value, (v) => _then(v as _TicketModel));

  @override
  _TicketModel get _value => super._value as _TicketModel;

  @override
  $Res call({
    Object? ticketId = freezed,
    Object? time = freezed,
    Object? employeeName = freezed,
    Object? address = freezed,
    Object? taskType = freezed,
    Object? dealerName = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_TicketModel(
      ticketId == freezed
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as int,
      time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      employeeName == freezed
          ? _value.employeeName
          : employeeName // ignore: cast_nullable_to_non_nullable
              as String,
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      taskType == freezed
          ? _value.taskType
          : taskType // ignore: cast_nullable_to_non_nullable
              as String,
      dealerName == freezed
          ? _value.dealerName
          : dealerName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TicketModel implements _TicketModel {
  const _$_TicketModel(this.ticketId, this.time, this.employeeName,
      this.address, this.taskType, this.dealerName, this.phoneNumber);

  factory _$_TicketModel.fromJson(Map<String, dynamic> json) =>
      _$_$_TicketModelFromJson(json);

  @override
  final int ticketId;
  @override
  final int time;
  @override
  final String employeeName;
  @override
  final String address;
  @override
  final String taskType;
  @override
  final String dealerName;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'TicketModel(ticketId: $ticketId, time: $time, employeeName: $employeeName, address: $address, taskType: $taskType, dealerName: $dealerName, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TicketModel &&
            (identical(other.ticketId, ticketId) ||
                const DeepCollectionEquality()
                    .equals(other.ticketId, ticketId)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.employeeName, employeeName) ||
                const DeepCollectionEquality()
                    .equals(other.employeeName, employeeName)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.taskType, taskType) ||
                const DeepCollectionEquality()
                    .equals(other.taskType, taskType)) &&
            (identical(other.dealerName, dealerName) ||
                const DeepCollectionEquality()
                    .equals(other.dealerName, dealerName)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ticketId) ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(employeeName) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(taskType) ^
      const DeepCollectionEquality().hash(dealerName) ^
      const DeepCollectionEquality().hash(phoneNumber);

  @JsonKey(ignore: true)
  @override
  _$TicketModelCopyWith<_TicketModel> get copyWith =>
      __$TicketModelCopyWithImpl<_TicketModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TicketModelToJson(this);
  }
}

abstract class _TicketModel implements TicketModel {
  const factory _TicketModel(
      int ticketId,
      int time,
      String employeeName,
      String address,
      String taskType,
      String dealerName,
      String phoneNumber) = _$_TicketModel;

  factory _TicketModel.fromJson(Map<String, dynamic> json) =
      _$_TicketModel.fromJson;

  @override
  int get ticketId => throw _privateConstructorUsedError;
  @override
  int get time => throw _privateConstructorUsedError;
  @override
  String get employeeName => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  String get taskType => throw _privateConstructorUsedError;
  @override
  String get dealerName => throw _privateConstructorUsedError;
  @override
  String get phoneNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TicketModelCopyWith<_TicketModel> get copyWith =>
      throw _privateConstructorUsedError;
}

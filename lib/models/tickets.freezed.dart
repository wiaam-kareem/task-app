// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tickets.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TicketsTearOff {
  const _$TicketsTearOff();

  _Tickets call(
      {required List<TicketModel> tickets, required Pagination pagination}) {
    return _Tickets(
      tickets: tickets,
      pagination: pagination,
    );
  }
}

/// @nodoc
const $Tickets = _$TicketsTearOff();

/// @nodoc
mixin _$Tickets {
  List<TicketModel> get tickets => throw _privateConstructorUsedError;
  Pagination get pagination => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketsCopyWith<Tickets> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsCopyWith<$Res> {
  factory $TicketsCopyWith(Tickets value, $Res Function(Tickets) then) =
      _$TicketsCopyWithImpl<$Res>;
  $Res call({List<TicketModel> tickets, Pagination pagination});

  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class _$TicketsCopyWithImpl<$Res> implements $TicketsCopyWith<$Res> {
  _$TicketsCopyWithImpl(this._value, this._then);

  final Tickets _value;
  // ignore: unused_field
  final $Res Function(Tickets) _then;

  @override
  $Res call({
    Object? tickets = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      tickets: tickets == freezed
          ? _value.tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<TicketModel>,
      pagination: pagination == freezed
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
    ));
  }

  @override
  $PaginationCopyWith<$Res> get pagination {
    return $PaginationCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value));
    });
  }
}

/// @nodoc
abstract class _$TicketsCopyWith<$Res> implements $TicketsCopyWith<$Res> {
  factory _$TicketsCopyWith(_Tickets value, $Res Function(_Tickets) then) =
      __$TicketsCopyWithImpl<$Res>;
  @override
  $Res call({List<TicketModel> tickets, Pagination pagination});

  @override
  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class __$TicketsCopyWithImpl<$Res> extends _$TicketsCopyWithImpl<$Res>
    implements _$TicketsCopyWith<$Res> {
  __$TicketsCopyWithImpl(_Tickets _value, $Res Function(_Tickets) _then)
      : super(_value, (v) => _then(v as _Tickets));

  @override
  _Tickets get _value => super._value as _Tickets;

  @override
  $Res call({
    Object? tickets = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_Tickets(
      tickets: tickets == freezed
          ? _value.tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<TicketModel>,
      pagination: pagination == freezed
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
    ));
  }
}

/// @nodoc

class _$_Tickets implements _Tickets {
  const _$_Tickets({required this.tickets, required this.pagination});

  @override
  final List<TicketModel> tickets;
  @override
  final Pagination pagination;

  @override
  String toString() {
    return 'Tickets(tickets: $tickets, pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Tickets &&
            (identical(other.tickets, tickets) ||
                const DeepCollectionEquality()
                    .equals(other.tickets, tickets)) &&
            (identical(other.pagination, pagination) ||
                const DeepCollectionEquality()
                    .equals(other.pagination, pagination)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tickets) ^
      const DeepCollectionEquality().hash(pagination);

  @JsonKey(ignore: true)
  @override
  _$TicketsCopyWith<_Tickets> get copyWith =>
      __$TicketsCopyWithImpl<_Tickets>(this, _$identity);
}

abstract class _Tickets implements Tickets {
  const factory _Tickets(
      {required List<TicketModel> tickets,
      required Pagination pagination}) = _$_Tickets;

  @override
  List<TicketModel> get tickets => throw _privateConstructorUsedError;
  @override
  Pagination get pagination => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TicketsCopyWith<_Tickets> get copyWith =>
      throw _privateConstructorUsedError;
}

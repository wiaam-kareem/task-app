// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tickets_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TicketsViewModel on _TicketsViewModel, Store {
  final _$errorMessageAtom = Atom(name: '_TicketsViewModel.errorMessage');

  @override
  String? get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String? value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  final _$stateAtom = Atom(name: '_TicketsViewModel.state');

  @override
  TicketsState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(TicketsState value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  final _$ticketsAtom = Atom(name: '_TicketsViewModel.tickets');

  @override
  List<TicketModel> get tickets {
    _$ticketsAtom.reportRead();
    return super.tickets;
  }

  @override
  set tickets(List<TicketModel> value) {
    _$ticketsAtom.reportWrite(value, super.tickets, () {
      super.tickets = value;
    });
  }

  final _$getTicketsAsyncAction = AsyncAction('_TicketsViewModel.getTickets');

  @override
  Future<dynamic> getTickets() {
    return _$getTicketsAsyncAction.run(() => super.getTickets());
  }

  @override
  String toString() {
    return '''
errorMessage: ${errorMessage},
state: ${state},
tickets: ${tickets}
    ''';
  }
}

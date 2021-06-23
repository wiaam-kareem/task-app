import 'package:mobx/mobx.dart';
import 'package:task_app/models/network_exception.dart';
import 'package:task_app/models/pagination.dart';
import 'package:task_app/models/ticket_model.dart';
import 'package:task_app/services/ticket_service.dart';

import 'common/helper.dart';

part 'tickets_view_model.g.dart';

class TicketsViewModel extends _TicketsViewModel with _$TicketsViewModel {
  TicketsViewModel(TicketService ticketService) : super(ticketService);
}

enum TicketsState { loading, loaded, initial, noData }

abstract class _TicketsViewModel with Store {
  final TicketService ticketService;

  _TicketsViewModel(this.ticketService);
  @observable
  String? errorMessage;
  @observable
  TicketsState state = TicketsState.initial;
  @observable
  List<TicketModel> tickets = [];

  late Pagination _pagination = Pagination(0, 0);

  @action
  Future getTickets() async {
    try {
      errorMessage = null;

      if (Helper.paginationFetchNext(this._pagination).fetchNext) {
        state = TicketsState.loading;

        ticketService
            .getTickets(
                Helper.paginationFetchNext(this._pagination).currentPage)
            .then((value) => value.fold((l) {
                  errorMessage = NetworkExceptions.getErrorMessage(l);
                  state = TicketsState.loaded;
                }, (r) {
                  tickets.addAll(r.tickets);
                  _pagination = r.pagination;
                  tickets.length == 0
                      ? state = TicketsState.noData
                      : state = TicketsState.loaded;
                }));
      }
    } catch (e) {
      print('chatching error in model');
      NetworkExceptions.getErrorMessage(
          NetworkExceptions.defaultError('something went wrong !'));
    }
  }
}

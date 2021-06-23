import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_app/models/pagination.dart';
import 'package:task_app/models/ticket_model.dart';
part 'tickets.freezed.dart';

@freezed
abstract class Tickets with _$Tickets {
  const factory Tickets({
    required final List<TicketModel> tickets,
    required final Pagination pagination,
  }) = _Tickets;
}

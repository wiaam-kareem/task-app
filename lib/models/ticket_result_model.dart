import 'package:task_app/models/pagination.dart';
import 'package:task_app/models/ticket_model.dart';

class TicketResultModel {
  late final List<TicketModel> tickets;
  late final Pagination pagination;

  TicketResultModel({required this.tickets, required this.pagination});

  factory TicketResultModel.fromJson(Map<String, dynamic> json) {
    var tickets = List<TicketModel>.empty(growable: true);
    var paginate = Pagination(0, 0);
    if (json['meta'] != null) {
      paginate = Pagination.fromJson(json['meta']);
    }

    if (json['results'] != null) {
      json['results'].forEach((v) {
        final ticketModel = TicketModel.fromJson(v);
        if (_isValidTicket(ticketModel)) {
          tickets.add(ticketModel);
        }
      });
    }
    return TicketResultModel(tickets: tickets, pagination: paginate);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['results'] = this.tickets.map((v) => v.toJson()).toList();
    data['meta'] = this.pagination;
    return data;
  }
}

bool _isValidTicket(TicketModel ticketModel) {
  return ticketModel.ticketId != -1 &&
      ticketModel.employeeName.isNotEmpty &&
      ticketModel.taskType.isNotEmpty &&
      ticketModel.address.isNotEmpty;
}

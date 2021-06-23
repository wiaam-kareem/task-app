import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:task_app/models/network_exception.dart';
import 'package:task_app/models/pagination.dart';
import 'package:task_app/models/ticket_model.dart';
import 'package:task_app/models/ticket_result_model.dart';
import 'package:task_app/models/tickets.dart';
import 'package:task_app/views/router/routes_constant.dart';

import 'common/task_api.dart';

class TicketService {
  Future<Either<NetworkExceptions, Tickets>> getTickets(int skip) async {
    try {
      var ticketsList = List<TicketModel>.empty(growable: true);

      await Future.delayed(Duration(seconds: 3));
      final Response response = await TaskApi.dio.get(
          "/daily_work/getListMyWork",
          queryParameters: {'skip': '0', 'take': "10"});
      var jsonData = json.decode(response.data);
      ticketsList = TicketResultModel.fromJson(jsonData).tickets;
      Pagination pagination = TicketResultModel.fromJson(jsonData).pagination;
      //thats because uts dummy data it will not return the correct pagination
      pagination = Pagination(skip, 4);
      //************************ */

      return right(Tickets(tickets: ticketsList, pagination: pagination));
    } catch (e) {
      return left(NetworkExceptions.getDioException(e));
    }
  }
}

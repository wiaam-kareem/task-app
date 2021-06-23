import 'package:freezed_annotation/freezed_annotation.dart';
part 'ticket_model.freezed.dart';

part 'ticket_model.g.dart';

@freezed
abstract class TicketModel with _$TicketModel {
  const factory TicketModel(
    final int ticketId,
    final int time,
    final String employeeName,
    final String address,
    final String taskType,
    final String dealerName,
    final String phoneNumber,
  ) = _TicketModel;
  factory TicketModel.fromJson(Map<String, dynamic> json) =>
      _$TicketModelFromJson(json);
}

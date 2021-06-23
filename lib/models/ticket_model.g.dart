// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TicketModel _$_$_TicketModelFromJson(Map<String, dynamic> json) {
  return _$_TicketModel(
    json['ticketId'] as int,
    json['time'] as int,
    json['employeeName'] as String,
    json['address'] as String,
    json['taskType'] as String,
    json['dealerName'] as String,
    json['phoneNumber'] as String,
  );
}

Map<String, dynamic> _$_$_TicketModelToJson(_$_TicketModel instance) =>
    <String, dynamic>{
      'ticketId': instance.ticketId,
      'time': instance.time,
      'employeeName': instance.employeeName,
      'address': instance.address,
      'taskType': instance.taskType,
      'dealerName': instance.dealerName,
      'phoneNumber': instance.phoneNumber,
    };

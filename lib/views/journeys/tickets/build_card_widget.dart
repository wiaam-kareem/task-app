import 'package:flutter/material.dart';
import 'package:task_app/models/ticket_model.dart';
import 'package:task_app/view_models/common/helper.dart';
import 'package:task_app/views/theme/theme_colors.dart';

class BuildCard extends StatelessWidget {
  final TicketModel ticket;
  final double width;
  final double height;

  const BuildCard(
      {required this.ticket, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: Container(
          color: AppColor.brandBlue,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                height: height * 0.05,
                width: double.infinity,
                color: AppColor.lightGrey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      Helper.fromIntToTime(ticket.time),
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          ticket.employeeName,
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                        Text(
                          ': ',
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                        Text(
                          'اسم الموضف',
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    BuildTextRow(
                      context: context,
                      title: 'اسم الوكيل',
                      value: ticket.dealerName,
                    ),
                    BuildTextRow(
                      context: context,
                      title: 'رقم هاتف الوكيل',
                      value: ticket.phoneNumber,
                    ),
                    BuildTextRow(
                      context: context,
                      title: 'العنوان',
                      value: ticket.address,
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    BuildTextRow(
                      context: context,
                      title: "نوع العمل",
                      value: ticket.taskType,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BuildTextRow extends StatelessWidget {
  final String title;
  final String value;
  final BuildContext context;

  const BuildTextRow(
      {required this.title, required this.value, required this.context});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          value,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        Text(
          ': ',
          style: Theme.of(context).textTheme.subtitle1,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ],
    );
  }
}

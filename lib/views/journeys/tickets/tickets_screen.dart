import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:task_app/common/screen_utilities/web_screen_size.dart';
import 'package:task_app/models/ticket_model.dart';
import 'package:task_app/view_models/login_view_model.dart';
import 'package:task_app/view_models/tickets_view_model.dart';
import 'package:task_app/views/common_widgets/loading_widget.dart';
import 'package:task_app/views/journeys/tickets/build_card_widget.dart';
import 'package:task_app/views/journeys/tickets/ticket_screen_header.dart';
import 'package:task_app/views/router/routes_constant.dart';
import 'package:task_app/views/theme/theme_colors.dart';

class TicketsScreen extends StatefulWidget {
  //this size setting is just for preview screens in web for testing purposes
  final double screenWidth = WebScreenSize.WebScreenWidth;
  final double screenHeight = WebScreenSize.WebScreenHeight;

  @override
  _TicketsScreenState createState() => _TicketsScreenState();
}

class _TicketsScreenState extends State<TicketsScreen> {
  late TicketsViewModel _store;
  late List<ReactionDisposer> _disposers;
  late ScrollController _scrollController;

  @override
  didChangeDependencies() {
    super.didChangeDependencies();

    _store = Provider.of<TicketsViewModel>(context);
    _scrollController = ScrollController();

    _scrollController.addListener(() async {
      double currentPosition = _scrollController.position.pixels;
      double maxScrollExtent = _scrollController.position.maxScrollExtent;

      if (currentPosition >= maxScrollExtent &&
          _store.state != TicketsState.loading) {
        await getTickets();
      }
    });

    _disposers = [
      reaction(
        (_) => _store.errorMessage,
        (String? message) {
          if (message != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(message),
              ),
            );
          }
        },
      ),
    ];
  }

  Future getTickets() async {
    await _store.getTickets();
  }

  @override
  void dispose() {
    _disposers.forEach((d) => d());
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.grey,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
            color: AppColor.beige,
            width: widget.screenWidth,
            height: widget.screenHeight,
            child: Column(
              children: [
                TicketScreenHeader(
                  height: widget.screenHeight,
                  width: widget.screenWidth,
                ),
                Expanded(
                  child: Observer(
                    builder: (_) {
                      if (_store.state == TicketsState.initial) {
                        getTickets();
                      }
                      return _store.state == TicketsState.noData
                          ? Container(
                              child: Center(child: Text('No Task for You!!')),
                            )
                          : Container(
                              width: widget.screenWidth * 0.90,
                              child: Center(
                                  child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  ListView.builder(
                                      controller: _scrollController,
                                      itemCount: _store.tickets.length,
                                      itemBuilder: (context, index) {
                                        return BuildCard(
                                          height: widget.screenHeight,
                                          width: widget.screenWidth,
                                          ticket: _store.tickets[index],
                                        );
                                      }),
                                  _store.state == TicketsState.loading
                                      ? Positioned(
                                          bottom: 10,
                                          width: 45,
                                          child: Container(
                                              padding: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(20))),
                                              child: LoadingWidget(
                                                color: AppColor.brandBlue,
                                              )),
                                        )
                                      : SizedBox.shrink(),
                                ],
                              )),
                            );
                    },
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

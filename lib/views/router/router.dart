import 'package:flutter/material.dart';
import 'package:task_app/views/journeys/login/login_screen.dart';
import 'package:task_app/views/journeys/lunch/lunch_screen.dart';
import 'package:task_app/views/journeys/tickets/tickets_screen.dart';

import 'package:task_app/views/router/routes_constant.dart';

class Router {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case login:
        return MaterialPageRoute(
            settings: routeSettings, builder: (_) => LoginScreen());
      case lunch:
        return MaterialPageRoute(
            settings: routeSettings, builder: (_) => LunchScreen());
      case ticket:
        return MaterialPageRoute(
            settings: routeSettings, builder: (_) => TicketsScreen());
      default:
        return MaterialPageRoute(builder: (_) => LunchScreen());
    }
  }
}

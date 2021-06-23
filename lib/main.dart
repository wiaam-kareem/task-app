import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_app/view_models/login_view_model.dart';
import 'package:task_app/view_models/tickets_view_model.dart';
import 'package:task_app/views/journeys/lunch/lunch_screen.dart';
import 'package:task_app/views/router/routes_constant.dart';
import 'package:task_app/views/theme/text_theme.dart';
import 'package:task_app/views/theme/theme_colors.dart';
import 'di/get_it.dart';
import 'di/get_it.dart' as getIt;
import 'views/router/router.dart ' as AppRouter;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  getIt.init();
  runApp(
    MultiProvider(
      providers: [
        Provider(create: (context) => getItInstance<AuthViewModel>()),
        Provider(create: (context) => getItInstance<TicketsViewModel>()),
      ],
      child: TaskApp(),
    ),
  );
}

class TaskApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          textTheme: ThemeText.getTextTheme(),
          primaryColor: AppColor.brandBlue,
          accentColor: Colors.white,
          inputDecorationTheme: InputDecorationTheme(
              border: UnderlineInputBorder(
                  borderSide: BorderSide(
            color: Colors.white,
          ))),
          snackBarTheme: SnackBarThemeData(
              backgroundColor: Theme.of(context).primaryColor)),

      //   home: LunchScreen(),
      onGenerateRoute: AppRouter.Router.onGenerateRoute,
      initialRoute: lunch,
    );
  }
}

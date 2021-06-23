import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

import 'package:task_app/common/screen_utilities/web_screen_size.dart';
import 'package:task_app/view_models/login_view_model.dart';
import 'package:task_app/view_models/login_view_model.dart';
import 'package:task_app/view_models/login_view_model.dart';
import 'package:task_app/views/common_widgets/back_widget.dart';
import 'package:task_app/views/common_widgets/background_widget.dart';
import 'package:task_app/views/common_widgets/logo.dart';
import 'package:task_app/views/router/routes_constant.dart';
import 'package:task_app/views/theme/theme_colors.dart';

import 'login_form.dart';

class LoginScreen extends StatefulWidget {
  //this size setting is just for preview screens in web for testing purposes
  final double screenWidth = WebScreenSize.WebScreenWidth;
  final double screenHeight = WebScreenSize.WebScreenHeight;
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late AuthViewModel _store;
  late List<ReactionDisposer> _disposers;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _store = Provider.of<AuthViewModel>(context);

    _disposers = [
      reaction(
        (_) => _store.errorMessage,
        (String? message) {
          if (message != null) {
            print(message);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(message),
              ),
            );
          }
        },
      ),
      reaction(
        (_) => _store.state,
        (AuthState state) {
          if (state == AuthState.authenticated) {
            Navigator.of(context).pushNamed(ticket);
          }
        },
      ),
    ];
  }

  @override
  void dispose() {
    _disposers.forEach((d) => d());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('building screen.....');
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Container(
            width: widget.screenWidth,
            height: widget.screenHeight,
            child: Stack(
              children: [
                BuildBackgroundContainer(),
                LoginWidget(
                  store: _store,
                  height: widget.screenHeight,
                  width: widget.screenWidth,
                ),
                Positioned(
                  width: widget.screenWidth * 0.4,
                  top: widget.screenHeight * 0.02,
                  child: BackWidget(
                    shouldBack: false,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class LoginWidget extends StatelessWidget {
  final AuthViewModel store;
  final double width;
  final double height;

  const LoginWidget(
      {Key? key,
      required this.store,
      required this.width,
      required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Observer(
        builder: (_) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Logo(height: 0.2 * height),
              SizedBox(
                height: 0.15 * height,
              ),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20),
                ),
                width: width * 9 / 10,
                child: LogInForm(
                  screenHaight: height,
                  screenWidth: width,
                  loading: store.state == AuthState.loading ? true : false,
                  onLoginPressed: (userName, password) async {
                    await store.tryLogIn(
                        userName: userName, password: password);
                  },
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
            ],
          );
        },
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:task_app/common/constants/size_constants.dart';
import 'package:task_app/common/screen_utilities/web_screen_size.dart';
import 'package:task_app/views/common_widgets/back_widget.dart';
import 'package:task_app/views/common_widgets/background_widget.dart';
import 'package:task_app/views/common_widgets/costume_button.dart';
import 'package:task_app/views/common_widgets/logo.dart';
import 'package:task_app/views/common_widgets/touchid_widget.dart';
import 'package:task_app/views/router/routes_constant.dart';
import 'package:task_app/views/theme/theme_colors.dart';

class LunchScreen extends StatelessWidget {
  //this size setting is just for preview screens in web for testing purposes
  final double screenWidth = WebScreenSize.WebScreenWidth;
  final double screenHeight = WebScreenSize.WebScreenHeight;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Container(
            width: screenWidth,
            height: screenHeight,
            child: Stack(
              children: [
                BuildBackgroundContainer(),
                BuildLunchOptions(),
                Positioned(
                  width: screenWidth * 0.4,
                  top: screenHeight * 0.02,
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

class BuildLunchOptions extends StatelessWidget {
//this size setting is just for preview screens in web for testing purposes
  final double screenWidth = WebScreenSize.WebScreenWidth;
  final double screenHeight = WebScreenSize.WebScreenHeight;
  const BuildLunchOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Logo(height: 0.2 * screenHeight),
        SizedBox(
          height: 0.15 * screenHeight,
        ),
        Container(
          width: screenWidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CostumeButton(
                  text: 'register',
                  onPressed: () {},
                  width: 0.35 * screenWidth),
              SizedBox(
                width: 0.04 * screenHeight,
              ),
              CostumeButton(
                  text: 'login',
                  onPressed: () {
                    Navigator.of(context).pushNamed(login);
                  },
                  width: 0.35 * screenWidth),
            ],
          ),
        ),
        SizedBox(
          height: 0.05 * screenHeight,
        ),
        Text(
          'Now!Quick login use your touch id',
          style: Theme.of(context).textTheme.headline1,
        ),
        SizedBox(
          height: 0.02 * screenHeight,
        ),
        TouchId(
          height: 0.1 * screenHeight,
        ),
        SizedBox(
          height: 0.02 * screenHeight,
        ),
        Text(
          'USE TOUCH ID',
          style: Theme.of(context).textTheme.headline1,
        ),
        SizedBox(
          height: 0.05 * screenHeight,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:task_app/views/theme/theme_colors.dart';

class BuildBackgroundContainer extends StatelessWidget {
  const BuildBackgroundContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              AppColor.brandGreen,
              AppColor.brandBlue,
            ])),
        width: 400,
        height: double.infinity,
      ),
    );
  }
}

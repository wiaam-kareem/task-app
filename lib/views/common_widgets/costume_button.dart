import 'package:flutter/material.dart';
import 'package:task_app/common/constants/size_constants.dart';

class CostumeButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final bool isEnabled;
  final double width;

  const CostumeButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.isEnabled = true,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeIn,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(width * 0.3),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: width / 10),
      margin: EdgeInsets.symmetric(vertical: width / 10),
      height: width / 3,
      width: width,
      child: TextButton(
        onPressed: isEnabled ? onPressed : null,
        child: Text(
          text,
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

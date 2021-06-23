import 'package:flutter/material.dart';

class BackWidget extends StatelessWidget {
  // final Function() onPressed;
  final bool shouldBack;

  const BackWidget({required this.shouldBack});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: shouldBack
          ? () {
              Navigator.of(context).pop();
            }
          : () {},
      child: Row(
        children: [
          Icon(
            Icons.arrow_back_ios_new,
          ),
          Text(
            'Back',
            style: TextStyle(
                color: Colors.black87,
                fontSize: 13,
                fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}

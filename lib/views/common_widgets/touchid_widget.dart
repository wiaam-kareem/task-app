import 'package:flutter/material.dart';

class TouchId extends StatelessWidget {
  final double height;
  const TouchId({
    required this.height,
  }) : assert(height > 0, 'height should be greater than 0');

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/pngs/fingerprint.png',
      color: Colors.white,
      height: height,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common/constants/size_constants.dart';
import 'theme_colors.dart';

class ThemeText {
  const ThemeText._();

  static TextTheme get _poppinsTextTheme => GoogleFonts.poppinsTextTheme();

  static TextStyle? get _whiteHeadLine1 =>
      _poppinsTextTheme.headline1?.copyWith(
        fontSize: Sizes.dimen_14,
        color: Colors.white,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5,
      );
  static TextStyle? get _whiteSubTitle1 =>
      _poppinsTextTheme.subtitle1?.copyWith(
        fontSize: Sizes.dimen_12,
        color: Colors.white70,
        fontWeight: FontWeight.w100,
        letterSpacing: 0.5,
      );
  static TextStyle? get _blackSubTitle2 =>
      _poppinsTextTheme.subtitle1?.copyWith(
        fontSize: Sizes.dimen_12,
        color: Colors.black87,
        fontWeight: FontWeight.w300,
        letterSpacing: 0.5,
      );

  static getTextTheme() => TextTheme(
      headline1: _whiteHeadLine1,
      subtitle1: _whiteSubTitle1,
      subtitle2: _blackSubTitle2);
}

extension ThemeTextExtension on TextTheme {
  TextStyle? get blackSubtitle1 =>
      subtitle1?.copyWith(fontWeight: FontWeight.w700, color: Colors.black87);
}

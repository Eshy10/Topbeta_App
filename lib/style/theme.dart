import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData get topbetaTheme => _topbetaTheme();
ThemeData _topbetaTheme() {
  final ColorScheme colorScheme = const ColorScheme.light().copyWith(
    primary: primaryColor,
    secondary: secondaryColor,
  );
  final ThemeData base = ThemeData(
    brightness: Brightness.light,
    accentColorBrightness: Brightness.dark,
    colorScheme: colorScheme,
    primaryColor: primaryColor,
    splashFactory: InkRipple.splashFactory,
  );
  return base.copyWith(
    textTheme: _buildTextTheme(base.textTheme),
  );
}

TextTheme _buildTextTheme(TextTheme base) {
  return base
      .copyWith()
      //todo apply correct font
      .apply(
        fontFamily: 'SourceSerifPro',
      );
}

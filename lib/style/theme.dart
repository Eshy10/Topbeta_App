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
      disabledColor: disabledColor,
      buttonTheme: ButtonThemeData(
          height: 48,
          minWidth: 306,
          buttonColor: primaryColor,
          colorScheme: colorScheme,
          textTheme: ButtonTextTheme.primary,
          disabledColor: disabledColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))));
  return base.copyWith(
      textTheme: _buildTextTheme(base.textTheme),
      accentTextTheme: _buildTextTheme(base.accentTextTheme));
}

TextTheme _buildTextTheme(TextTheme base) {
  return base
      .copyWith(
          headline5: base.headline5.copyWith(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w800,
            color: heading5Color,
            fontSize: 20,
          ),
          headline3: base.headline3.copyWith(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w800,
            color: heading3Color,
            fontSize: 28,
          ),
          bodyText1: base.bodyText1.copyWith(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
          button: base.button.copyWith(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w800,
            fontSize: 16,
          ))
      .apply(
        fontFamily: 'SourceSerifPro',
      );
}

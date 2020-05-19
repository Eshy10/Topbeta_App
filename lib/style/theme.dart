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
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      buttonTheme: ButtonThemeData(
          height: 48,
          minWidth: 306,
          buttonColor: primaryColor,
          colorScheme: colorScheme,
          textTheme: ButtonTextTheme.primary,
          disabledColor: buttonDisabledColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))));
  return base.copyWith(
      inputDecorationTheme: InputDecorationTheme(
          hintStyle: _buildTextTheme(base.textTheme).bodyText2.copyWith(
              fontWeight: FontWeight.w300, fontSize: 16, color: hintTextColor),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: primaryColor,
              )),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: errorColor,
              )),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: disabledColor,
              ))),
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
          headline4: base.headline4.copyWith(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w800,
            color: heading5Color,
            fontSize: 15,
          ),
          headline3: base.headline3.copyWith(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w800,
            color: heading3Color,
            fontSize: 28,
          ),
          headline6: base.headline6.copyWith(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w800,
            color: primaryColor,
            fontSize: 17,
          ),
          subtitle1: base.subtitle1.copyWith(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            color: primaryColor,
            fontSize: 16,
          ),
          subtitle2: base.subtitle2.copyWith(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,
            color: primaryColor,
            fontSize: 17,
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

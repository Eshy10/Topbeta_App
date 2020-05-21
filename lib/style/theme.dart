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
      backgroundColor: backgroundColor,
      canvasColor: canvasColor,
      primaryColorDark: primaryColorDark,
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      chipTheme: ChipThemeData(
          padding: const EdgeInsets.only(top: 0),
          backgroundColor: whiteColor,
          disabledColor: disabledColor,
          selectedColor: primaryColor,
          secondarySelectedColor: secondaryColor,
          labelPadding: const EdgeInsets.symmetric(vertical: 3, horizontal: 17),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: disabledColor),
            borderRadius: BorderRadius.circular(5),
          ),
          labelStyle: TextStyle(
            color: primaryColor,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            fontFamily: 'Avenir',
          ),
          secondaryLabelStyle: const TextStyle(),
          brightness: Brightness.light),
      bottomSheetTheme: const BottomSheetThemeData(
        elevation: 12,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(50))),
      ),
      buttonTheme: ButtonThemeData(
          buttonColor: primaryColor,
          colorScheme: colorScheme,
          textTheme: ButtonTextTheme.primary,
          disabledColor: buttonDisabledColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))));
  return base.copyWith(
      inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.only(top: 8, left: 13),
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
          bodyText2: base.bodyText2.copyWith(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
          caption: base.caption.copyWith(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,
            fontSize: 16,
            color: captionColor,
          ),
          button: base.button.copyWith(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w800,
            fontSize: 16,
          ))
      .apply(
        fontFamily: 'Avenir',
      );
}

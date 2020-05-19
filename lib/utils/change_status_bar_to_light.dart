import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// This function removes the status bar
void removeStatusBar() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  /* SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      // For iOS
      statusBarBrightness: Brightness.dark,
      // For Android M and higher
      statusBarIconBrightness: Brightness.dark,
    ),
  );*/
}

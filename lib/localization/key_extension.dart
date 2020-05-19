import 'package:flutter/material.dart';

import 'app_localization.dart';

extension StringExtension on String {
  String localized(BuildContext context) {
    return AppLocalizations.of(context).translate(this);
  }
}

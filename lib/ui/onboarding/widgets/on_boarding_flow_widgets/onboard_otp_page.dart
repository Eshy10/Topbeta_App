import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:topbeta/localization/localization_key.dart';
import 'package:topbeta/style/colors.dart';

import '../../../shared/pin_code_input.dart';

class OnboardingOtpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          LocalizedText.pleaseEnterOtpSentTo.localized(context),
          style: Theme.of(context).textTheme.subtitle2,
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          LocalizedText.enterOneTimePassword.localized(context),
          style: Theme.of(context).textTheme.headline4,
        ),
        const SizedBox(
          height: 18,
        ),
        PinCodeInput()
      ],
    );
  }
}

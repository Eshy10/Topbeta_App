import 'package:flutter/material.dart';
import '../../../../localization/localization_key.dart';
import '../../../../style/colors.dart';

import '../../../shared/pin_code_input.dart';

class OnboardingPinCodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          LocalizedText.pinIsRequiredToSign.localized(context),
          style: Theme.of(context).textTheme.subtitle2,
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          LocalizedText.setUpPIN.localized(context),
          style: Theme.of(context).textTheme.headline4,
        ),
        const SizedBox(
          height: 18,
        ),
        PinCodeInput(),
        const SizedBox(
          height: 26,
        ),
        Text(
          LocalizedText.showPin.localized(context),
          style: Theme.of(context)
              .textTheme
              .headline4
              .copyWith(fontSize: 14, color: showPinColor),
        ),
        const SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Text(
            LocalizedText.tryNotToUseIdentical.localized(context),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
      ],
    );
  }
}

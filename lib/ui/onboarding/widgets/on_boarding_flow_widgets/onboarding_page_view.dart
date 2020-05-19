import 'package:flutter/material.dart';
import 'package:topbeta/ui/onboarding/widgets/on_boarding_flow_widgets/onboard_otp_page.dart';

import 'fill_in_page.dart';
import 'onboarding_pin_code_page.dart';

class OnboardingPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      //Todo uncomment
      //physics: const NeverScrollableScrollPhysics(),
      children: <Widget>[
        FillInDetailsPage(),
        OnboardingOtpPage(),
        OnboardingPinCodePage(),
      ],
    );
  }
}

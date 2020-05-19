import 'package:flutter/material.dart';
import 'package:topbeta/style/colors.dart';
import '../../utils/change_status_bar_to_light.dart';
import 'widgets/welcome_onboarding_widgets/get_started_button.dart';
import 'widgets/welcome_onboarding_widgets/welcome_illustration.dart';
import 'widgets/welcome_onboarding_widgets/welcome_text.dart';

class WelcomeOnBoardingPage extends StatelessWidget {
  const WelcomeOnBoardingPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Change the status bar color for this screen
    removeStatusBar();
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26),
        child: Column(
          children: <Widget>[
            const Spacer(
              flex: 116,
            ),
            WelcomeIllustration(),
            const Spacer(
              flex: 146,
            ),
            WelcomeText(),
            const Spacer(
              flex: 128,
            ),
            GetStartedButton(),
            const Spacer(
              flex: 110,
            ),
          ],
        ),
      ),
    );
  }
}

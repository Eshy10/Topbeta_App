import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:topbeta/localization/localization_key.dart';
import 'package:topbeta/main.dart';
import 'package:topbeta/ui/onboarding/widgets/on_boarding_flow_widgets/onboarding_page_view.dart';
import 'package:topbeta/utils/constants.dart';

import 'notifiers/onboarding_page_index_provider.dart';
import 'widgets/on_boarding_flow_widgets/next_or_done_button.dart';
import 'widgets/on_boarding_flow_widgets/onboarding_progress_indicator.dart';
import '../shared/topbeta_text_logo.dart';

class OnBoardingFlow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The OnboardingPageIndexNotifier is used to provide the pageView index
    return ChangeNotifierProvider(
      create: (_) => OnboardingPageIndexNotifier(),
      child: Builder(builder: (context) {
        return Scaffold(
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 45,
                ),
                TopbetaTextLogo(),
                const SizedBox(
                  height: 25,
                ),
                OnboardingProgressIndicator(),
                const SizedBox(
                  height: 30,
                ),
                Expanded(child: OnboardingPageView()),
                const SizedBox(
                  height: 10,
                ),
                NextOrDoneButton(),
                const SizedBox(
                  height: buttonBottomSpace,
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

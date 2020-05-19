import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:topbeta/style/colors.dart';
import '../../notifiers/onboarding_page_index_provider.dart';

class OnboardingProgressIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final index = context.watch<OnboardingPageIndexNotifier>().pageIndex;
    return Row(
      children: <Widget>[
        Container(
          height: 2,
          width: 22,
          color: secondaryColor,
        ),
        const SizedBox(
          width: 9,
        ),
        Container(
          height: 2,
          width: 22,
          color: index > 0 ? secondaryColor : Theme.of(context).disabledColor,
        ),
        const SizedBox(
          width: 9,
        ),
        Container(
          height: 2,
          width: 22,
          color: index > 1 ? secondaryColor : Theme.of(context).disabledColor,
        ),
      ],
    );
  }
}

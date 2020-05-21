import 'package:flutter/material.dart';
import 'package:topbeta/ui/shared/top_beta_base_button.dart';
import '../../../../style/colors.dart';

class GetStartedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TopbetaBaseButton(
      child: RaisedButton(
        onPressed: () {},
        color: whiteColor,
        child: Text(
          "Get Started",
          style:
              Theme.of(context).textTheme.button.copyWith(color: primaryColor),
        ),
      ),
    );
  }
}

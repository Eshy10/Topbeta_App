import 'package:flutter/material.dart';
import 'package:topbeta/localization/localization_key.dart';

class WelcomeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          LocalizedText.welcomeToTopbeta.localized(context),
          style: Theme.of(context).textTheme.headline3,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          LocalizedText.aPlatformWhereYouBuyAirtime.localized(context),
          style: Theme.of(context).accentTextTheme.bodyText1,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:topbeta/ui/shared/totbeta_logo.dart';

class HomePageTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 56),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 19,
              width: 16,
              child: TopBetaLogo(),
            ),
            const SizedBox(width: 8),
            Text(
              "Topbeta",
              style: Theme.of(context).accentTextTheme.bodyText2,
            )
          ],
        ),
        const SizedBox(height: 27),
      ],
    );
  }
}

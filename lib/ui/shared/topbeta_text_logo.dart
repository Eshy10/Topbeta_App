import 'package:flutter/material.dart';
import 'top_beta_text.dart';
import 'totbeta_logo.dart';

class TopbetaTextLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 105,
      height: 25,
      child: FittedBox(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TopBetaLogo(),
            const SizedBox(
              width: 10,
            ),
            TopBetaText()
          ],
        ),
      ),
    );
  }
}

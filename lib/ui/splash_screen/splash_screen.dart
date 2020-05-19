import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../ui/shared/top_beta_text.dart';
import '../../ui/shared/totbeta_logo.dart';

class SplashScreen extends StatelessWidget {
  static const String ROUTE_NAME = "/";
  const SplashScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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

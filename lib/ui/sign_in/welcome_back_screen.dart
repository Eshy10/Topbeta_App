import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:topbeta/localization/localization_key.dart';
import 'package:topbeta/ui/shared/pin_code_input.dart';
import 'package:topbeta/ui/shared/topbeta_text_logo.dart';
import 'package:topbeta/ui/sign_in/widgets/finger_print_auth.dart';
import 'package:topbeta/utils/constants.dart';

class WelcomeBackPage extends StatefulWidget {
  @override
  _WelcomeBackPageState createState() => _WelcomeBackPageState();
}

class _WelcomeBackPageState extends State<WelcomeBackPage> {
  void _showFingerPrintAuth() {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(50))),
        builder: (context) {
          return FingerPrintAuthBottomSheet();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[TopbetaTextLogo()],
            ),
            const SizedBox(
              height: 52,
            ),
            Text(
              LocalizedText.welcomeBack.localized(context),
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              LocalizedText.insertYourPIN.localized(context),
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(
              height: 18,
            ),
            PinCodeInput(),
            const SizedBox(
              height: 27,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(LocalizedText.forgotPIN.localized(context)),
                const SizedBox(
                  width: 8,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    LocalizedText.reset.localized(context),
                    style: Theme.of(context).textTheme.headline6,
                  ),
                )
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(LocalizedText.notYou.localized(context)),
                const SizedBox(
                  width: 8,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    LocalizedText.switchAccount.localized(context),
                    style: Theme.of(context).textTheme.headline4,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 27,
            ),
            RaisedButton(
              onPressed: () {
                _showFingerPrintAuth();
              },
              child: Text(LocalizedText.login.localized(context)),
            ),
            const SizedBox(
              height: buttonBottomSpace,
            )
          ],
        ),
      ),
    );
  }
}

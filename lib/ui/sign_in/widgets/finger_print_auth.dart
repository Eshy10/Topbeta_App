import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:topbeta/localization/localization_key.dart';
import 'package:topbeta/style/colors.dart';

class FingerPrintAuthBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      height: 320,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            height: 37,
          ),
          Text(
            LocalizedText.useFingerprintToAuthenticate.localized(context),
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 35),
          SvgPicture.asset("assets/svgs/finger_print.svg"),
          const SizedBox(height: 12),
          Text(
            LocalizedText.touchYourFingerprintSensor.localized(context),
            style: Theme.of(context)
                .textTheme
                .bodyText2
                .copyWith(color: primaryColor),
          ),
          const SizedBox(height: 90),
          Row(
            children: <Widget>[
              const Spacer(),
              Text(
                LocalizedText.usePinCode.localized(context),
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    .copyWith(color: showPinColor),
              )
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

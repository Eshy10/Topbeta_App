import 'package:flutter/material.dart';
import '../../../../style/colors.dart';

class GetStartedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {},
      color: whiteColor,
      child: Text(
        "Get Started",
        style: Theme.of(context).textTheme.button.copyWith(color: primaryColor),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:topbeta/ui/shared/top_beta_base_button.dart';

class NextOrDoneButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TopbetaBaseButton(
          child: RaisedButton(
            onPressed: () {},
            child: const Text("Next"),
          ),
        ),
      ],
    );
  }
}

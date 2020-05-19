import 'package:flutter/material.dart';

class NextOrDoneButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          onPressed: () {},
          child: const Text("Next"),
        ),
      ],
    );
  }
}

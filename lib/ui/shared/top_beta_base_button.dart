import 'dart:ffi';

import 'package:flutter/material.dart';

class TopbetaBaseButton extends StatelessWidget {
  final RaisedButton child;
  const TopbetaBaseButton({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 306,
      child: child,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:topbeta/utils/constants.dart';

class MarginContainer extends StatelessWidget {
  final Widget child;

  const MarginContainer({Key key, @required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: child,
    );
  }
}

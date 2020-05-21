import 'package:flutter/material.dart';
import 'package:topbeta/utils/constants.dart';

//Todo use paddedcontainer in project
class PaddedContainer extends StatelessWidget {
  final Widget child;

  const PaddedContainer({Key key, @required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: child,
    );
  }
}

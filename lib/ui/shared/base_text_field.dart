import 'package:flutter/material.dart';
import 'package:topbeta/utils/constants.dart';

//Todo use basetextfield in all testfields
class BaseTextField extends StatelessWidget {
  final TextField child;

  const BaseTextField({Key key, @required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: textFieldHeight,
      child: child,
    );
  }
}

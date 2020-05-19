import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';
import '../../../../style/colors.dart';

class PinCodeInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BoxDecoration pinPutDecoration = BoxDecoration(
      color: whiteColor,
      borderRadius: BorderRadius.circular(5),
      border: Border.all(
        color: disabledColor,
      ),
    );
    return FractionallySizedBox(
      widthFactor: 0.6,
      child: PinPut(
        fieldsCount: 4,
        eachFieldHeight: 40,
        autofocus: false,
        eachFieldWidth: 40,
        inputDecoration: InputDecoration(
          contentPadding: const EdgeInsets.all(0),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          counterText: '',
        ),
        submittedFieldDecoration: pinPutDecoration,
        pinAnimationType: PinAnimationType.fade,
        selectedFieldDecoration: pinPutDecoration,
        followingFieldDecoration: pinPutDecoration,
      ),
    );
  }
}

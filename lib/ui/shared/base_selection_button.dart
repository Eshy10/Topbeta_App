import 'package:flutter/material.dart';
import 'package:topbeta/style/colors.dart';
import 'package:topbeta/utils/constants.dart';

class BaseDropDownButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const BaseDropDownButton({Key key, @required this.title, this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: horizontalPadding),
        padding: const EdgeInsets.fromLTRB(13, 9, 21, 9),
        decoration: BoxDecoration(
          border: Border.all(color: disabledColor, width: 1),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              title,
              style: Theme.of(context).textTheme.caption,
            ),
            Icon(
              Icons.expand_more,
              color: secondaryColor,
            )
          ],
        ),
      ),
    );
  }
}

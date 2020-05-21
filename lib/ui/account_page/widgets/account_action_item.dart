import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:topbeta/style/colors.dart';

class AccountActionItemWidget extends StatelessWidget {
  final String svgPath;
  final String title;
  final VoidCallback onTap;
  const AccountActionItemWidget(
      {Key key, @required this.svgPath, @required this.title, this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          onTap: onTap,
          leading: SvgPicture.asset(svgPath),
          title: Text(
            title,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: secondaryColor,
            size: 15,
          ),
        ),
        const Divider()
      ],
    );
  }
}

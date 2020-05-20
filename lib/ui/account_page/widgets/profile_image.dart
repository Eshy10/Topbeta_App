import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({Key key}) : super(key: key);
  String get _userIcon => "assets/svgs/user.svg";
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      child: SvgPicture.asset(_userIcon),
    );
  }
}

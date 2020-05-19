import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeIllustration extends StatelessWidget {
  String get illustrationSvgLogo => "assets/svgs/welcome_illustration.svg";
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(illustrationSvgLogo);
  }
}

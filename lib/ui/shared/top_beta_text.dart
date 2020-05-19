import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:topbeta/style/colors.dart';

class TopBetaText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Topbeta",
      style: GoogleFonts.roboto(
          color: primaryColor,
          fontWeight: FontWeight.w500,
          fontSize: 38.4,
          fontStyle: FontStyle.normal),
    );
  }
}

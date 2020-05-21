import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:topbeta/style/colors.dart';
import 'package:topbeta/utils/constants.dart';

export 'package:country_list_pick/country_list_pick.dart';

class SelectCountryWidget extends StatelessWidget {
  final ValueChanged<CountryCode> onCountryChanged;
  const SelectCountryWidget({Key key, @required this.onCountryChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 21),
      margin: const EdgeInsets.symmetric(horizontal: horizontalPadding),
      decoration: BoxDecoration(
        border: Border.all(color: disabledColor, width: 1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CountryListPick(
            isShowFlag: true,
            isShowTitle: true,
            initialSelection: '+234',
            onChanged: onCountryChanged,
          ),
          Icon(
            Icons.expand_more,
            color: secondaryColor,
          )
        ],
      ),
    );
  }
}

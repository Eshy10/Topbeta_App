import 'package:flutter/material.dart';
import 'package:topbeta/ui/shared/totbeta_logo.dart';
import 'package:topbeta/utils/constants.dart';

class HomePageHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Spacer(),
          SizedBox(
            height: 19,
            width: 16,
            child: TopBetaLogo(),
          ),
          const SizedBox(width: 8),
          Text(
            appName,
            style: Theme.of(context).accentTextTheme.bodyText2,
          ),
          const Spacer(),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

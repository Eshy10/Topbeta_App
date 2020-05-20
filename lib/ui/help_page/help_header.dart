import 'package:flutter/material.dart';
import 'package:topbeta/utils/constants.dart';

class HelpPageHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Spacer(),

          //Todo localize this
          Text(
            "Help",
            style: Theme.of(context).accentTextTheme.bodyText2,
          ),
          const Spacer(
            flex: 3,
          ),
          IconButton(
            icon: Icon(Icons.chat_bubble_outline),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

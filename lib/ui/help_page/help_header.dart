import 'package:flutter/material.dart';
import 'package:topbeta/utils/constants.dart';

class HelpPageHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 46),
          Row(
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
          const SizedBox(height: 21),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:topbeta/utils/constants.dart';

class TransactionHistoryHeader extends StatelessWidget {
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
            "Transaction History",
            style: Theme.of(context).accentTextTheme.bodyText2,
          ),
          const Spacer(
            flex: 2,
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

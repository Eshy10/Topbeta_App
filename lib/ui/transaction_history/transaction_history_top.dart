import 'package:flutter/material.dart';
import 'package:topbeta/utils/constants.dart';

class TransactionHistoryHeader extends StatelessWidget {
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
          const SizedBox(height: 21),
        ],
      ),
    );
  }
}

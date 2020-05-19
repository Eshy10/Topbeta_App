import 'package:flutter/material.dart';

class TransactionHistoryTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
              icon: Icon(Icons.notifications),
              onPressed: () {},
            )
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

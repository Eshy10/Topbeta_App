import 'package:flutter/material.dart';

import 'widgets/transaction_history_widget.dart';

class TransactionPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ...List.generate(10, (index) => TransactionHistoryWidget()).toList()
      ],
    );
  }
}

import 'package:flutter/material.dart';

import 'help_page_widget.dart';

//Todo localize text here
class HelpPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        HelpPageItemWidget(
          title: "How can I recharge a mobile?",
        ),
        HelpPageItemWidget(
          title: "How do I use Top-beta?",
        ),
        HelpPageItemWidget(
          title: "What can I do if I recharge the wrong number?",
        ),
        HelpPageItemWidget(
          title: "How can I recharge a mobile?",
        ),
        HelpPageItemWidget(
          title: "How do I use Top-beta?",
        ),
        HelpPageItemWidget(
          title: "What can I do if I recharge the wrong number?",
        ),
      ],
    );
  }
}

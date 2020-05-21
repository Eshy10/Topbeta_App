import 'package:flutter/material.dart';

class HelpPageItemWidget extends StatelessWidget {
  final String title;

  const HelpPageItemWidget({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ExpansionTile(
          title: Text(title),
          children: const <Widget>[],
        ),
        const Divider()
      ],
    );
  }
}

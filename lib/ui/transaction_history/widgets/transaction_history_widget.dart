import 'package:flutter/material.dart';
import 'package:topbeta/style/colors.dart';

//Todo localized all text

class TransactionHistoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Container(
            padding: const EdgeInsets.only(left: 10, top: 10),
            height: 50,
            width: 50,
            alignment: Alignment.topCenter,

            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            //Todo change this secondarycolor

            child: CircleAvatar(
              foregroundColor: secondaryColor,
              radius: 5,
            ),
          ),
          title: Text("Data"),
          subtitle: Text("+2445785994988"),
          trailing: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "N 1,000",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontSize: 15),
                  ),
                  Text(
                    "2:45pm",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        .copyWith(fontSize: 15),
                  )
                ],
              ),
              const SizedBox(width: 10),
              OutlineButton(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 7),
                  onPressed: () {},
                  child: Text("Re-use"))
            ],
          ),
        ),
        const Divider()
      ],
    );
  }
}

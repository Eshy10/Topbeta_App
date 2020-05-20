import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../style/colors.dart';
import '../../utils/change_status_bar_to_light.dart';

class PageLayout extends StatelessWidget {
  final Widget topChild;
  final Widget bodyChild;
  final int flexSize;
  const PageLayout(
      {Key key,
      @required this.topChild,
      @required this.bodyChild,
      this.flexSize = 6})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Change the status bar color for this screen
    removeStatusBar();
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: <Widget>[
          Expanded(
            child: IconTheme(
              data: Theme.of(context).accentIconTheme,
              child: topChild,
            ),
          ),
          Expanded(
              flex: flexSize,
              child: Material(
                  elevation: 8,
                  shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(50))),
                  child: ClipRRect(
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(50)),
                      child: bodyChild)))
        ],
      ),
    );
  }
}

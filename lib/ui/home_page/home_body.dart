import 'package:flutter/material.dart';
import 'package:topbeta/ui/shared/top_beta_base_button.dart';

import 'widgets/airtime_page_widget.dart';
import 'widgets/data_page_widget.dart';

//Todo localized text here
class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: <Widget>[
            TabBar(
              tabs: <Widget>[
                Tab(
                  key: const ValueKey("Airtime"),
                  child: Text(
                    "Airtime",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Tab(
                  key: const ValueKey("Data"),
                  child: Text(
                    "Data",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(children: [
                AirtimePageWidget(),
                DataPageWidget(),
              ]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TopbetaBaseButton(
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text("Recharge"),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 36),
          ],
        ),
      ),
    );
  }
}

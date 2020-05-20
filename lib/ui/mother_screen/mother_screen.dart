import 'package:flutter/material.dart';
import 'package:topbeta/ui/help_page/help_header.dart';
import 'package:topbeta/ui/home_page/home_body.dart';
import '../../localization/localization_key.dart';
import '../../ui/account_page/account_header.dart';
import '../../ui/home_page/home_page_top.dart';
import '../../ui/shared/page_layout.dart';
import '../../ui/transaction_history/transaction_history_top.dart';

class MotherScreen extends StatelessWidget {
  final ValueNotifier<int> _pageIndexNotifier = ValueNotifier<int>(0);
  final List<PageLayout> _pageLayouts = <PageLayout>[
    PageLayout(
      topChild: HomePageHeader(),
      bodyChild: HomePageBody(),
    ),
    PageLayout(
      topChild: TransactionHistoryHeader(),
      bodyChild: Container(),
    ),
    PageLayout(
      topChild: AccountPageHeader(),
      bodyChild: Container(),
      flexSize: 2,
    ),
    PageLayout(
      topChild: HelpPageHeader(),
      bodyChild: Container(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: _pageIndexNotifier,
        builder: (BuildContext context, int value, Widget child) {
          return _pageLayouts[value];
        },
      ),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: _pageIndexNotifier,
        builder: (BuildContext context, int value, Widget child) {
          return BottomNavigationBar(
            currentIndex: value,
            type: BottomNavigationBarType.fixed,
            onTap: (pageIndex) => _pageIndexNotifier.value = pageIndex,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text(LocalizedText.home.localized(context))),
              BottomNavigationBarItem(
                  icon: Icon(Icons.history),
                  title: Text(LocalizedText.history.localized(context))),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle),
                  title: Text(LocalizedText.account.localized(context))),
              BottomNavigationBarItem(
                  icon: Icon(Icons.help),
                  title: Text(LocalizedText.help.localized(context))),
            ],
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'widgets/account_action_item.dart';

//Todo localized all text here
class AccountPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        AccountActionItemWidget(
          title: "Account Settings",
          svgPath: "assets/svgs/settings.svg",
        ),
        AccountActionItemWidget(
          title: "Payment Methods",
          svgPath: "assets/svgs/payment.svg",
        ),
        AccountActionItemWidget(
          title: "Invite Friends",
          svgPath: "assets/svgs/invite_friend.svg",
        ),
        AccountActionItemWidget(
          title: "Promotions",
          svgPath: "assets/svgs/promotion.svg",
        ),
        AccountActionItemWidget(
          title: "Auto Top-up",
          svgPath: "assets/svgs/repeat.svg",
        ),
        AccountActionItemWidget(
          title: "Rate us",
          svgPath: "assets/svgs/rate_us.svg",
        ),
        AccountActionItemWidget(
          title: "Pivacy Policy",
          svgPath: "assets/svgs/pivacy.svg",
        ),
        AccountActionItemWidget(
          title: "Log Out",
          svgPath: "assets/svgs/log_out.svg",
        ),
      ],
    );
  }
}

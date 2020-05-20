import 'package:flutter/material.dart';

import 'widgets/profile_image.dart';

class AccountPageHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const SizedBox(height: 50),
        const ProfileImage(),
        const SizedBox(height: 10),
        Text(
          "Elizabeth Adenuga",
          style: Theme.of(context).accentTextTheme.bodyText1,
        ),
        const SizedBox(height: 3),
        Text(
          "elizabeth.adenuga@gmail.com",
          style: Theme.of(context).textTheme.headline4,
        ),
        const SizedBox(height: 18),
      ],
    );
  }
}

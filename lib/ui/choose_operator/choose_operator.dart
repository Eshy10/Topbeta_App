import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:topbeta/style/colors.dart';
import 'package:topbeta/ui/mother_screen/page_layout.dart';
import 'package:topbeta/ui/shared/base_text_field.dart';

//Todo localized text
class ChooseOperatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BasePageLayout(
        topChild: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context)),
            const SizedBox(width: 33),
            Text(
              "Choose Operator",
              style: Theme.of(context)
                  .accentTextTheme
                  .headline6
                  .copyWith(color: whiteColor),
            ),
          ],
        ),
        bodyChild: Column(
          children: <Widget>[
            ListTile(
              title: Row(
                children: <Widget>[
                  Expanded(
                    child: BaseTextField(
                        child: TextField(
                      enabled: false,
                      decoration: InputDecoration(
                          prefixIcon: Radio(
                              value: 0, groupValue: 4, onChanged: (val) {}),
                          hintText: "Select Operators"),
                    )),
                  )
                ],
              ),
            ),
            ListTile(
              leading: Radio(value: 0, groupValue: 0, onChanged: (val) {}),
              title: Row(
                children: <Widget>[
                  SvgPicture.asset("assets/svgs/mtn.svg"),
                  const SizedBox(width: 15),
                  Text(
                    "MTN",
                    style: Theme.of(context).textTheme.subtitle2,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:topbeta/core/models/phone_num_type.dart';
import 'package:topbeta/localization/localization_key.dart';
import 'package:topbeta/style/colors.dart';

class FillInDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              LocalizedText.fillInTheDetailsBelow.localized(context),
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(
              height: 28,
            ),
            TopBetaTextInput(
              inputLabel: LocalizedText.firstName,
              textFormField: TextFormField(
                decoration: InputDecoration(
                    hintText: LocalizedText.enterFirstName.localized(context)),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            TopBetaTextInput(
              inputLabel: LocalizedText.lastName,
              textFormField: TextFormField(
                decoration: InputDecoration(
                    hintText: LocalizedText.enterLastName.localized(context)),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            TopBetaTextInput(
              inputLabel: LocalizedText.emailAddress,
              textFormField: TextFormField(
                decoration: InputDecoration(
                    hintText:
                        LocalizedText.enterEmailAddress.localized(context)),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            TopBetaTextInput(
              inputLabel: LocalizedText.phoneNumber,
              textFormField: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 13),
                      child: DropdownButton<PhoneNumberType>(
                        items: <DropdownMenuItem<PhoneNumberType>>[
                          ...PhoneNumberType.values
                              .map((e) => DropdownMenuItem<PhoneNumberType>(
                                    value: e,
                                    child: Text(e.countryCode),
                                  ))
                              .toList()
                        ],
                        // Todo Change this once there are other options
                        value: PhoneNumberType.Nigeria,
                        style: Theme.of(context).textTheme.bodyText2,
                        icon: Icon(
                          Icons.expand_more,
                          color: secondaryColor,
                        ),
                        onChanged: (PhoneNumberType value) {},
                      ),
                    ),
                    hintText: LocalizedText.phoneHint.localized(context)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopBetaTextInput extends StatelessWidget {
  final String inputLabel;
  final TextFormField textFormField;
  const TopBetaTextInput(
      {Key key, @required this.inputLabel, @required this.textFormField})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          inputLabel.localized(context),
          style: Theme.of(context).textTheme.subtitle1,
        ),
        const SizedBox(
          height: 11,
        ),
        Container(height: 40, child: textFormField)
      ],
    );
  }
}

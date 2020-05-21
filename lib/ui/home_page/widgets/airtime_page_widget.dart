import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:topbeta/style/colors.dart';
import 'package:topbeta/ui/choose_operator/choose_operator.dart';
import 'package:topbeta/ui/shared/base_selection_button.dart';
import 'package:topbeta/ui/shared/base_text_field.dart';
import 'package:topbeta/ui/shared/margined_container.dart';
import 'package:topbeta/ui/shared/select_country_widget.dart';
import 'package:topbeta/utils/constants.dart';

//Todo localize all text here
class AirtimePageWidget extends StatelessWidget {
  final ValueNotifier<String> _selectedcountryCode = ValueNotifier("+234");
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SelectCountryWidget(
          onCountryChanged: (CountryCode code) {
            _selectedcountryCode.value = code.dialCode;
          },
        ),
        const SizedBox(height: 24),
        MarginContainer(
          child: Row(
            children: <Widget>[
              Container(
                height: textFieldHeight,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 7),
                decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.horizontal(left: Radius.circular(5)),
                    border: Border.all(color: disabledColor)),
                child: ValueListenableBuilder(
                  valueListenable: _selectedcountryCode,
                  builder: (BuildContext context, String value, Widget child) {
                    return Text(value);
                  },
                ),
              ),
              Expanded(
                  child: BaseTextField(
                      child: const TextField(
                decoration: InputDecoration(hintText: "Enter Phone Number "),
              )))
            ],
          ),
        ),
        SizedBox(height: 24),
        BaseDropDownButton(
          title: "Select Operator",
          onPressed: () {
            //Todo use beter navigation
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return ChooseOperatorPage();
            }));
          },
        ),
        SizedBox(height: 24),
        BaseTextField(
          child: TextField(
            decoration: InputDecoration(hintText: "Enter Amount "),
          ),
        ),
        const SizedBox(height: 23),
        MarginContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Chip(
                label: Text("50"),
              ),
              Chip(
                label: Text("100"),
              ),
              Chip(
                label: Text("200"),
              ),
              Chip(
                label: Text("500"),
              ),
              Chip(
                label: Text("1000"),
              ),
            ],
          ),
        ),
        const SizedBox(height: 27),
/*
        Row(
          children: <Widget>[
            Checkbox(value: false, onChanged: (_) {}),
            Text("Set info as default "),
            Spacer(),
            Text("Auto Top-up "),
            Placeholder(
              fallbackWidth: 86,
              fallbackHeight: 24,
            )
          ],
        ),
*/
      ],
    );
  }
}

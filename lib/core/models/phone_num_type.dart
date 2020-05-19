enum PhoneNumberType { Nigeria }

extension TopbetaPhoneNumberType on PhoneNumberType {
  String get countryCode {
    String code;
    switch (this) {
      case PhoneNumberType.Nigeria:
        code = "+234";
        break;
    }
    return code;
  }
}

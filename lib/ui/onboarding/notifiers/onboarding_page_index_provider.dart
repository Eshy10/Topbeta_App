import 'package:flutter/cupertino.dart';

class OnboardingPageIndexNotifier extends ChangeNotifier {
  int _pageIndex = 0;
  int get pageIndex => _pageIndex;
  void nextPage() {
    ++_pageIndex;
    notifyListeners();
  }
}

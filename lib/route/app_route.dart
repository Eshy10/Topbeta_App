import 'package:flutter/material.dart';

class AppRoute extends NavigatorObserver {
  static final Map<String, WidgetBuilder> _routes = {};
  Map<String, WidgetBuilder> get routes => _routes;

  Route<dynamic> generateRoute(RouteSettings settings) {
    MaterialPageRoute targetPage;

    return targetPage;
  }
}

final AppRoute appRoute = AppRoute();

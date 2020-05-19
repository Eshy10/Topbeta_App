import 'package:flutter/material.dart';
import 'package:topbeta/ui/splash_screen/splash_screen.dart';

class AppRoute extends NavigatorObserver {
  static final Map<String, WidgetBuilder> _routes = {
    SplashScreen.ROUTE_NAME: (_) => const SplashScreen(),
  };
  Map<String, WidgetBuilder> get routes => _routes;

  Route<dynamic> generateRoute(RouteSettings settings) {
    MaterialPageRoute targetPage;

    return targetPage;
  }
}

final AppRoute appRoute = AppRoute();

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'localization/app_localization.dart';
import 'route/app_route.dart';
import 'style/theme.dart';
import 'ui/onboarding/on_boarding_flow.dart';
import 'ui/onboarding/welcome_onboarding_page.dart';
import 'ui/sign_in/welcome_back_screen.dart';
import 'ui/splash_screen/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(TopbetaApp());
}

class TopbetaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Force the App to remain in portrait mode
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Topbeta',
      theme: topbetaTheme,
      // routes: appRoute.routes,
      //navigatorObservers: [appRoute],
      // onGenerateRoute: appRoute.generateRoute,
      home: Scaffold(body: WelcomeBackPage()),
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:theparkingdeals/modules/auth/signin/signin.dart';
import 'package:theparkingdeals/modules/auth/signup/signup.dart';
import 'package:theparkingdeals/modules/splash_screen/splash_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String signIn = '/signIn';
  static const String signUp = '/signUp';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) =>  SplashScreen());
      case signIn:
        return MaterialPageRoute(builder: (_) => const SignInScreen());
      case signUp:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}

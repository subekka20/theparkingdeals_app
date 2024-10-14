import 'package:flutter/material.dart';
import 'package:theparkingdeals/modules/auth/signin/signin.dart';
import 'package:theparkingdeals/modules/auth/signup/signup.dart';
import 'package:theparkingdeals/modules/my_booking/my_booking_screen.dart';
import 'package:theparkingdeals/modules/my_profile/my_profile_screen.dart';
import 'package:theparkingdeals/modules/splash_screen/splash_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String signIn = '/signIn';
  static const String signUp = '/signUp';
  static const String myProfile = '/myProfile';
  static const String myBooking = '/myBooking';
  static const String myBookingExpand = '/myBookingExpand';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) =>  const SplashScreen());
      case signIn:
        return MaterialPageRoute(builder: (_) => const SignInScreen());
      case signUp:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case myProfile:
        return MaterialPageRoute(builder: (_) => const MyProfileScreen());
      case myBooking:
        return MaterialPageRoute(builder: (_) => const MyBookingScreen());
      case myBookingExpand:
        return MaterialPageRoute(builder: (_) => const MyBookingScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}

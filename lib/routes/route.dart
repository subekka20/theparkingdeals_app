import 'package:flutter/material.dart';
import 'package:theparkingdeals/modules/auth/signin/signin.dart';
import 'package:theparkingdeals/modules/auth/signup/signup.dart';
import 'package:theparkingdeals/modules/booking_overview/presenters/booking_view.dart';
import 'package:theparkingdeals/modules/booking_overview/presenters/overview_screen.dart';
import 'package:theparkingdeals/modules/booking_overview/presenters/reviews/empty_review.dart';
import 'package:theparkingdeals/modules/booking_overview/presenters/terms_condition_screen.dart';
import 'package:theparkingdeals/modules/contact/presenters/contact.dart';
import 'package:theparkingdeals/modules/get_quote/presenters/quote_screen.dart';
import 'package:theparkingdeals/modules/guest/presenters/booking_summary_screen.dart';
import 'package:theparkingdeals/modules/guest/presenters/guest_screen.dart';
import 'package:theparkingdeals/modules/more_screen/more_screen.dart';
import 'package:theparkingdeals/modules/my_booking/presenters/my_booking_expand_screen.dart';
import 'package:theparkingdeals/modules/my_booking/presenters/my_booking_screen.dart';
import 'package:theparkingdeals/modules/my_profile/presenters/my_profile_screen.dart';
import 'package:theparkingdeals/modules/splash_screen/splash_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String signIn = '/signIn';
  static const String signUp = '/signUp';
  static const String myProfile = '/myProfile';
  static const String myBooking = '/myBooking';
  static const String myBookingExpand = '/myBookingExpand';
  static const String getQuote = '/getQuote';
  static const String moreScreen = '/moreScreen';
  static const String contactScreen = '/contact-screen';
  static const String guestScreen = '/guest-screen';
  static const String bookingSummary = '/booking-summary';
  static const String bookingView = '/booking-view';
  static const String overView = '/over-view';
  static const String termsCondition = '/terms-condition';
  static const String emptyReview = '/empty-review';

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
        return MaterialPageRoute(builder: (_) => const MyBookingExpandScreen());
      case getQuote:
        return MaterialPageRoute(builder: (_) => const QuoteScreen());
      case moreScreen:
        return MaterialPageRoute(builder: (_) => const MoreScreen());
      case contactScreen:
        return MaterialPageRoute(builder: (_) => const ContactScreen());
      case guestScreen:
        return MaterialPageRoute(builder: (_) => const GuestScreen());
      case bookingSummary:
        return MaterialPageRoute(builder: (_) => const BookingSummaryScreen());
      case bookingView:
        return MaterialPageRoute(builder: (_) => const BookingViewScreen());
      case overView:
        return MaterialPageRoute(builder: (_) => const OverViewScreen());
      case termsCondition:
        return MaterialPageRoute(builder: (_) => const TermsConditionScreen());
      case emptyReview:
        return MaterialPageRoute(builder: (_) => const EmptyReviewScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}

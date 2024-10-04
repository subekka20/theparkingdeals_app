import 'package:flutter/material.dart';
import 'package:theparkingdeals/core/theme_data/color_theme.dart';
import 'package:theparkingdeals/core/theme_data/text_theme.dart';
import 'package:theparkingdeals/modules/shared/buttons/custom_button.dart';
import 'package:theparkingdeals/routes/route.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(flex: 3),

          Text(
            'The Parking Deals',
            style: textTheme.headlineLarge?.copyWith(color: surfaceSubtitle),
          ),
          const SizedBox(height: 20),

          Image.asset(
            'assets/images/logo192.png',
            height: 100,
            width: 100,
          ),

          const Spacer(flex: 2),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: SizedBox(
              width: double.infinity,
              height: 60,
              child: CustomButton(
                label: "Get Started",
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.signIn);
                },
                backgroundColor:surfaceDefault,

              ),
            ),
          ),

          const Spacer(flex: 1),
        ],
      ),
    );
  }
}

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'The Parking Deals',
              style: textTheme.headlineLarge?.copyWith(color: surfaceSubtitle,fontSize: 36),
            ),
            const SizedBox(height: 10),
            Image.asset(
              'assets/images/logo192.png',
              height: 150,
              width: 150,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          bottom: 40.0,
          left: 20.0,
          right: 20.0,
        ),
        child: SizedBox(
          width: double.infinity,
          height: 60,
          child: CustomButton(
            label: "Get Started",
            fontSize: 24,
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.signIn);
            },
            backgroundColor: surfaceDefault,
          ),
        ),
      ),
    );
  }
}

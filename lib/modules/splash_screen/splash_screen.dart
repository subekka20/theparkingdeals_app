import 'package:flutter/material.dart';
import 'package:theparkingdeals/core/theme_data/color_theme.dart';
import 'package:theparkingdeals/routes/route.dart'; // Import the route constants

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background, // Dark Blue background color
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(flex: 3), // Space at the top

          // App title
          const Text(
            'The Parking Deals',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(height: 20), // Space between text and logo

          // Logo image
          Image.asset(
            'assets/images/logo192.png',
            height: 100,
            width: 100,
          ),

          const Spacer(flex: 2), // Space between logo and button

          // 'Get Started' button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.signIn);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: surfaceDefault, 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),

          const Spacer(flex: 1), // Space at the bottom
        ],
      ),
    );
  }
}

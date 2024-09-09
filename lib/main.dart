import 'package:flutter/material.dart';
import 'package:theparkingdeals/core/theme_data/color_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor, 
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(flex: 3), 

          // App title
          const Text(
            'The Parking Deals',
            style: TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 20), 

          Image.asset(
            'assets/images/logo192.png',
            height: 150,
            width: 150,
          ),

          const Spacer(flex: 2), 

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  // Action on button press
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.buttonColor, 
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

          const Spacer(flex: 1), 
        ],
      ),
    );
  }
}

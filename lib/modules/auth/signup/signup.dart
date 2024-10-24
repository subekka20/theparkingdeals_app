import 'package:flutter/material.dart';
import 'package:theparkingdeals/core/theme_data/color_theme.dart';
import 'package:theparkingdeals/core/theme_data/text_theme.dart';
import 'package:theparkingdeals/modules/shared/buttons/custom_button.dart';
import 'package:theparkingdeals/routes/route.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _obscurePassword = true;
  bool _obscureconfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: background,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 100),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Welcome to the",
                          style: textTheme.headlineLarge
                              ?.copyWith(color: textHeading),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "The Parking Deals",
                          style: textTheme.headlineLarge?.copyWith(
                              color: textHeading,
                              fontWeight: FontWeight.w500,
                              fontSize: 28),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 112),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: const BoxDecoration(
                    color: surfaceDisabled,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      Center(
                        child: Text('Sign Up',
                            style: textTheme.headlineLarge
                                ?.copyWith(color: surfaceDarker)),
                      ),
                      const SizedBox(height: 20),
                      RichText(
                        text: TextSpan(
                          text: 'Title ',
                          style: textTheme.headlineSmall
                              ?.copyWith(color: surfaceDarker),
                          children: const [
                            TextSpan(
                              text: '*',
                              style: TextStyle(color: primaryDefault),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      DropdownButtonFormField<String>(
                        value: 'Mr',
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        items: ['Mr', 'Mrs', 'Miss']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          // Handle dropdown selection
                        },
                      ),
                      const SizedBox(height: 20),
                      RichText(
                        text: TextSpan(
                          text: 'First Name ',
                          style: textTheme.headlineSmall
                              ?.copyWith(color: surfaceDarker),
                          children: const [
                            TextSpan(
                              text: '*',
                              style: TextStyle(color: primaryDefault),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Shaki",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text('Last Name',
                          style: textTheme.headlineSmall
                              ?.copyWith(color: surfaceDarker)),
                      const SizedBox(height: 8),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Shan",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      RichText(
                        text: TextSpan(
                          text: 'Contact No',
                          style: textTheme.headlineSmall
                              ?.copyWith(color: surfaceDarker),
                          children: const [
                            TextSpan(
                              text: '*',
                              style: TextStyle(color: primaryDefault),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "0771234567",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      RichText(
                        text: TextSpan(
                          text: 'Email ',
                          style: textTheme.headlineSmall
                              ?.copyWith(color: surfaceDarker),
                          children: const [
                            TextSpan(
                              text: '*',
                              style: TextStyle(color: primaryDefault),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "admin@gmail.com",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      RichText(
                        text: TextSpan(
                          text: 'Password ',
                          style: textTheme.headlineSmall
                              ?.copyWith(color: surfaceDarker),
                          children: const [
                            TextSpan(
                              text: '*',
                              style: TextStyle(color: primaryDefault),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        obscureText: _obscurePassword,
                        decoration: InputDecoration(
                          hintText: "**********",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(_obscurePassword
                                ? Icons.visibility_off
                                : Icons.visibility),
                            onPressed: () {
                              setState(() {
                                _obscurePassword = !_obscurePassword;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      RichText(
                        text: TextSpan(
                          text: 'Confirm Password ',
                          style: textTheme.headlineSmall
                              ?.copyWith(color: surfaceDarker),
                          children: const [
                            TextSpan(
                              text: '*',
                              style: TextStyle(color: primaryDefault),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        obscureText: _obscureconfirmPassword,
                        decoration: InputDecoration(
                          hintText: "**********",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(_obscureconfirmPassword
                                ? Icons.visibility_off
                                : Icons.visibility),
                            onPressed: () {
                              setState(() {
                                _obscureconfirmPassword =
                                    !_obscureconfirmPassword;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: CustomButton(
                          label: "Sign Up",
                          onPressed: () {
                            Navigator.pushNamed(context, AppRoutes.getQuote);
                          },
                          backgroundColor: background,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Already have an account?",
                                    style: textTheme.displayMedium),
                                const SizedBox(width: 5),
                                GestureDetector(
                                  onTap: () {
                                    // Action for sign up
                                    Navigator.pushNamed(
                                        context, AppRoutes.signIn);
                                  },
                                  child: Text('Sign in',
                                      style: textTheme.displayMedium
                                          ?.copyWith(color: surfaceDefault)),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            GestureDetector(
                              onTap: () {
                                // Action for login as guest
                              },
                              child: Text('Login as a guest',
                                  style: textTheme.displayMedium
                                      ?.copyWith(color: surfaceDarker)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

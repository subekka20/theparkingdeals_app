import 'package:flutter/material.dart';
import 'package:theparkingdeals/core/theme_data/text_theme.dart';
import 'package:theparkingdeals/modules/shared/buttons/custom_button.dart';
import 'package:theparkingdeals/routes/route.dart';
import 'package:theparkingdeals/core/theme_data/color_theme.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 90),
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
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
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
                  child: Text('Sign In',
                      style: textTheme.headlineLarge
                          ?.copyWith(color: surfaceDarker)),
                ),
                const SizedBox(height: 20),
                RichText(
                        text: TextSpan(
                          text: 'Email ',
                          style: textTheme.headlineSmall?.copyWith(color: surfaceDarker),
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
                          style: textTheme.headlineSmall?.copyWith(color: surfaceDarker),
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
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {},
                        ),
                        Text(
                          'Remember Me',
                          style: textTheme.displayMedium
                              ?.copyWith(color: surfaceDarker),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        // Action for forgot password
                      },
                      child: Text(
                        'Forgot Password?',
                        style: textTheme.displayMedium
                            ?.copyWith(color: errorDefault),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: CustomButton(
                      label: "Sign In",
                      onPressed: () {
                         Navigator.pushNamed(context, AppRoutes.getQuote);
                      },
                      backgroundColor: background,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    )),
                const SizedBox(height: 15),
                Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account?",
                              style: textTheme.displayMedium),
                          const SizedBox(width: 5),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, AppRoutes.signUp);
                            },
                            child: Text('Sign up',
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
    );
  }
}

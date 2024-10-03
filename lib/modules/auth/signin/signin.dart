import 'package:flutter/material.dart';
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: background,
        body: SingleChildScrollView(  
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 90),
                child: const Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Welcome to the",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "The Parking Deals",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 145),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: const BoxDecoration(
                  color: Color(0xFFE0E0E0),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    const Center(
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Email',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      initialValue: "admin@gmail.com",
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Password',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      obscureText: _obscurePassword,
                      decoration: InputDecoration(
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
                            const Text(
                              'Remember Me',
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            // Action for forgot password
                          },
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.red,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          // Action for sign in
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: background,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: "Montserrat",
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Don't have an account?",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(width: 5),
                              GestureDetector(
                                onTap: () {
                                  // Action for sign up
                                  Navigator.pushNamed(
                                      context, AppRoutes.signUp);
                                },
                                child: const Text(
                                  'Sign up',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF8E24AA),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              // Action for login as guest
                            },
                            child: const Text(
                              'Login as a guest',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
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
        ),
      ),
    );
  }
}

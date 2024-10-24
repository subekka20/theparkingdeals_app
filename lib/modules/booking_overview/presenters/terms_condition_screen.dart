import 'package:flutter/material.dart';

class TermsConditionScreen extends StatefulWidget {
  const TermsConditionScreen({super.key});

  @override
  State<TermsConditionScreen> createState() => _TermsConditionScreenState();
}

class _TermsConditionScreenState extends State<TermsConditionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A237E), 
      appBar: AppBar(
        backgroundColor: Colors.grey[200], 
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.purple),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Terms & Conditions',
          style: TextStyle(
            color: Colors.purple, 
            fontSize: 24,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: double.infinity, 
          height: double.infinity, 
          decoration: BoxDecoration(
            color: Colors.grey[200], 
            borderRadius: BorderRadius.circular(16.0), 
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: RichText(
              text: const TextSpan(
                text: 'For The Parking Deals T&Cs, please visit ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, 
                ),
                children: [
                  TextSpan(
                    text: "https://theparkingdeals.co.uk/terms-and-conditions",
                    style: TextStyle(
                      color: Colors.purple, 
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: TermsConditionScreen(),
  ));
}

import 'package:flutter/material.dart';
import 'package:theparkingdeals/core/theme_data/color_theme.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Reviews',
          style: TextStyle(
            color: Colors.purple, 
            fontSize: 24,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: background,
      body: Container(
        child: const Text("data"),
      ),
    );
  }
}
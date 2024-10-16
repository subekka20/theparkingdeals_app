import 'package:flutter/material.dart';
import 'package:theparkingdeals/core/theme_data/color_theme.dart';
import 'package:theparkingdeals/core/theme_data/text_theme.dart';

class QuoteScreen extends StatefulWidget {
  const QuoteScreen({super.key});

  @override
  State<QuoteScreen> createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:surfaceSubtitle,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: textTitle),
          onPressed: () {
            
          },
        ),
        title: const Text(
          'Parking Deals',
          style: TextStyle(
            color: textTitle,
            fontSize: 24,
          ),
        ),
      ),
      backgroundColor: background,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
          ),
          child:  Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child:  Text(
                    'Get Quote',
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 10,),
                Text("Select airport",
                style: textTheme.bodyLarge?.copyWith(color: textSubtitle),),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
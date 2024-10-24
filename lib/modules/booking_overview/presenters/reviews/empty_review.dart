import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmptyReviewScreen extends StatefulWidget {
  const EmptyReviewScreen({super.key});

  @override
  State<EmptyReviewScreen> createState() => _EmptyReviewScreenState();
}

class _EmptyReviewScreenState extends State<EmptyReviewScreen> {
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
          'Reviews',
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                      'assets/icons/message_square.svg',
                      width: 150,
                      height: 150,
                    ),
                const Text(
                     'No Review Data!',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black, 
                    ),
                  ),
              ],
            ),
            ),
          ),
        ),
      );
  }
}

void main() {
  runApp(const MaterialApp(
    home: EmptyReviewScreen(),
  ));
}

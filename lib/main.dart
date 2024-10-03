import 'package:flutter/material.dart';
import 'package:theparkingdeals/routes/route.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Parking Deals',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRoutes.splash, 
      onGenerateRoute: AppRoutes.generateRoute, 
    );
  }
}

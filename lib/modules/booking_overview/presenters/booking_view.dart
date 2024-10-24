import 'package:flutter/material.dart';
import 'package:theparkingdeals/core/theme_data/color_theme.dart';
import 'package:theparkingdeals/modules/more_screen/widgets/list_title.dart';

class BookingViewScreen extends StatefulWidget {
  const BookingViewScreen({super.key});

  @override
  _BookingViewScreenState createState() => _BookingViewScreenState();
}

class _BookingViewScreenState extends State<BookingViewScreen> {
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
          'Booking View',
          style: TextStyle(
            color: Colors.purple,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: background,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: const BorderRadius.all(Radius.circular(40.0)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTiles(
                name: 'Overview',
                onTap: () {
                  Navigator.pushNamed(context, '/over-view');
                },
              ),
              ListTiles(
                name: 'Drop - Off Procedure',
                onTap: () {
                  Navigator.pushNamed(context, '');
                },
              ),
              ListTiles(
                name: 'Return Procedure',
                onTap: () {
                  Navigator.pushNamed(context, '');
                },
              ),
              ListTiles(
                name: 'Reviews',
                onTap: () {
                  Navigator.pushNamed(context, '/empty-review');
                },
              ),
              ListTiles(
                name: 'Terms & Conditions',
                onTap: () {
                  Navigator.pushNamed(context, '/terms-condition');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

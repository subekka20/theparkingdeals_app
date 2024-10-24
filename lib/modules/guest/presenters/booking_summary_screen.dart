import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:theparkingdeals/core/theme_data/color_theme.dart';

class BookingSummaryScreen extends StatefulWidget {
  const BookingSummaryScreen({super.key});

  @override
  State<BookingSummaryScreen> createState() => _BookingSummaryScreenState();
}

class _BookingSummaryScreenState extends State<BookingSummaryScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.purple),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Booking Summary',
          style: TextStyle(
            color: Colors.purple,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: background,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildAirportDetail(
                      'Company', 'Airport Parking Bay Meet & Greet Luton','assets/icons/Box.svg'),
                  const SizedBox(height: 10),
                  buildAirportDetail('Location', 'Luton','assets/icons/location_on.svg'),
                  const SizedBox(height: 10),
                  buildDateTimeDetail(
                      'Drop-off Details', '16/09/2024', '01:30 AM'),
                  const SizedBox(height: 10),
                  buildDateTimeDetail(
                      'Pickup Details', '23/09/2024', '23:30 PM'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  buildBokkingCard(
                    logo: 'assets/images/logo192.png',
                    title: 'Airport Parking Bay Meet & Greet Luton',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Method for building the airport and location info
  Widget buildAirportDetail(String title, String value, String icon) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        Row(
          children: [
             SvgPicture.asset(
                    icon,
                    width: 24,
                    height: 24,
                    colorFilter: const ColorFilter.mode(Colors.purple, BlendMode.srcIn), // Use purple color
                  ),
            const SizedBox(width: 10),
            Text(
              value,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }

  // Method for building the date-time section
  Widget buildDateTimeDetail(String title, String date, String time) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const Icon(Icons.calendar_today, color: Colors.purple),
            const SizedBox(width: 8),
            Text(date),
            const SizedBox(width: 20),
            const Icon(Icons.access_time, color: Colors.purple),
            const SizedBox(width: 8),
            Text(time),
          ],
        ),
      ],
    );
  }

  // Method for building the parking deal cards
  Widget buildBokkingCard({
    required String logo,
    required String title
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
                child: Image.asset(
                  logo,
                  height: 100,
                  width: 100,
                ),
              ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[300],
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Back',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/booking-summary');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Continue',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BookingSummaryScreen(),
  ));
}

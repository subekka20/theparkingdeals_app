import 'package:flutter/material.dart';
import 'package:theparkingdeals/core/theme_data/color_theme.dart';

class GuestScreen extends StatefulWidget {
  const GuestScreen({super.key});

  @override
  State<GuestScreen> createState() => _GuestScreenState();
}

class _GuestScreenState extends State<GuestScreen> {
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
          'Booking',
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
                  buildAirportDetail('Airport', 'Luton', Icons.flight_takeoff),
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
                  buildParkingDealCard(
                    logo: 'assets/images/logo192.png',
                    title: 'Airport Parking Bay Meet & Greet Luton',
                    price: '£65',
                    rating: 5,
                    details: [
                      'Uniformed Insured chauffeurs',
                      'Pickup & Drop Off at the terminal',
                      'No buses, No Waiting. Meet and Greet',
                      'Airport levy charges not included'
                    ],
                  ),
                  const SizedBox(height: 20),
                  buildParkingDealCard(
                    logo: 'assets/images/logo192.png',
                    title: 'Luton 247 Meet & Greet',
                    price: '£65',
                    rating: 5,
                    details: [
                      'Excellent for meet and greet',
                      'Drop off and pick up at the terminal.',
                      'Reliable, Punctual & professional staff',
                      'Airport levy charges not included',
                    ],
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
  Widget buildAirportDetail(String title, String value, IconData icon) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            IconButton(
              onPressed: () {
                // Action for edit button goes here
              },
              icon: const Icon(Icons.edit),
              color: Colors.black,
            ),
          ],
        ),
        Row(
          children: [
            Icon(icon, color: Colors.black),
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
  Widget buildParkingDealCard({
    required String logo,
    required String title,
    required String price,
    required int rating,
    required List<String> details,
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
          Row(
            children: [
              // Placeholder for the logo
              Image.asset(
                logo,
                height: 60,
                width: 60,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: "poppines"
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: List.generate(
                        rating,
                        (index) => const Icon(Icons.star, color: Colors.orange),
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Cancellation Cover Available',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ),
              Text(
                price,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: details
                .map((detail) => Text(
                      '• $detail',
                      style: const TextStyle(fontSize: 14,fontFamily: "poppines"),
                    ))
                .toList(),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/booking-view');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[300],
                  padding:
                      const EdgeInsets.symmetric(horizontal: 70, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'View',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/booking-summary');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 70, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Book',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              Icon(Icons.remove_red_eye, color: Colors.grey),
              SizedBox(width: 5),
              Text('13 Currently Viewing',
                  style: TextStyle(color: Colors.grey)),
            ],
          )
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GuestScreen(),
  ));
}

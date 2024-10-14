import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:theparkingdeals/core/theme_data/color_theme.dart';

class MyBookingScreen extends StatefulWidget {
  const MyBookingScreen({super.key});

  @override
  _MyBookingScreenState createState() => _MyBookingScreenState();
}

class _MyBookingScreenState extends State<MyBookingScreen> {
  // Dummy data for bookings
  final List<Map<String, String>> bookings = [
    {'id': 'TPD-000141', 'date': '25/08/2024 2:17:40 PM', 'status': 'pending'},
    {'id': 'TPD-000142', 'date': '24/08/2024 1:10:22 PM', 'status': 'paid'},
    {'id': 'TPD-000143', 'date': '23/08/2024 5:44:19 PM', 'status': 'unpaid'},
    {'id': 'TPD-000144', 'date': '22/08/2024 11:55:00 AM', 'status': 'pending'},
    {'id': 'TPD-000145', 'date': '21/08/2024 9:31:45 AM', 'status': 'unpaid'},
    {'id': 'TPD-000144', 'date': '22/08/2024 11:55:00 AM', 'status': 'pending'},
    {'id': 'TPD-000145', 'date': '21/08/2024 9:31:45 AM', 'status': 'unpaid'},
  ];

  Color getStatusColor(String status) {
    switch (status) {
      case 'paid':
        return Colors.green;
      case 'unpaid':
        return Colors.red;
      case 'pending':
      default:
        return Colors.orange;
    }
  }

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
          'My Bookings',
          style: TextStyle(
            color: textTitle,
            fontSize: 24,
          ),
        ),
      ),
      backgroundColor: background,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      color: surfaceDisabled,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Search here...',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                SvgPicture.asset(
                  'assets/icons/Filter.svg',
                  colorFilter: const ColorFilter.mode(
                    surfaceDisabled,
                    BlendMode.srcATop,
                  ),
                  width: 30,
                  height: 30,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: bookings.length,
                itemBuilder: (context, index) {
                  final booking = bookings[index];
                  return Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: surfaceDisabled,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Booking ID: ',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              booking['id']!,
                              style: const TextStyle(fontSize: 16),
                            ),
                            const Spacer(),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 4),
                              decoration: BoxDecoration(
                                color: getStatusColor(booking['status']!),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                booking['status']!.capitalize(),
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          booking['date']!,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'see more',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: textTitle,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Extension to capitalize the first letter of the status
extension StringCasingExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}

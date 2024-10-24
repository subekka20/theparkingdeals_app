import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyBookingExpandScreen extends StatefulWidget {
  const MyBookingExpandScreen({super.key});

  @override
  _MyBookingExpandScreenState createState() => _MyBookingExpandScreenState();
}

class _MyBookingExpandScreenState extends State<MyBookingExpandScreen> {
  // Dummy data for bookings
  final List<Map<String, dynamic>> bookings = [
    {
      'id': 'TPD-000141',
      'date': '25/08/2024 2:17:40 PM',
      'status': 'pending',
      'provider': 'Luton 247 Meet & Greet',
      'location': 'Luton',
      'dropOff': '27/08/2024 & 00:00',
      'return': '03/09/2024 & 02:00',
      'quote': '£160',
      'fee': '£1',
      'discount': '£0',
      'total': '£161',
      'departTerminal': 'Terminal 1',
      'arrivalTerminal': 'Terminal 3',
      'inboundFlight': '-',
      'vehicleReg': 'dcdv',
      'vehicleMake': '-',
      'vehicleModel': '-',
      'vehicleColor': 'Black',
      'vendorEmail': 'info@luton247airportparking.co.uk',
      'vendorPhone': '7534185856'
    },
    // Add more bookings here...
  ];

  // Color mappings for booking statuses
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
        backgroundColor: Colors.grey[300],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.purple),
          onPressed: () {
            // Add your back button functionality here
          },
        ),
        title: const Text(
          'My Bookings',
          style: TextStyle(
            color: Colors.purple,
            fontSize: 24,
          ),
        ),
      ),
      backgroundColor: Colors.blue[900],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search Bar
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
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
                const SizedBox(width: 10),
                SvgPicture.asset(
                  'assets/icons/Filter.svg',
                  colorFilter: const ColorFilter.mode(
                    Colors.purple,
                    BlendMode.srcATop,
                  ),
                  width: 24,
                  height: 24,
                ),
              ],
            ),
            const SizedBox(height: 20),
            // List of bookings
            Expanded(
              child: ListView.builder(
                itemCount: bookings.length,
                itemBuilder: (context, index) {
                  final booking = bookings[index];
                  return Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ExpansionTile(
                      title: Row(
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
                      subtitle: Text(
                        booking['date']!,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      children: [
                        // Booking Details
                        buildDetailsSection(
                          'Booking Details',
                          [
                            'Provider : ${booking['provider']}',
                            'Location : ${booking['location']}',
                            'Drop Off Date & Time : ${booking['dropOff']}',
                            'Return Date & Time : ${booking['return']}',
                            'Booking Quote : ${booking['quote']}',
                            'Booking Fee : ${booking['fee']}',
                            'Discount : ${booking['discount']}',
                            'Total : ${booking['total']}',
                          ],
                        ),
                        // Travel Details
                        buildDetailsSection(
                          'Travel Details',
                          [
                            'Depart Terminal : ${booking['departTerminal']}',
                            'Arrival Terminal : ${booking['arrivalTerminal']}',
                            'Inbound Flight/Vessel : ${booking['inboundFlight']}',
                          ],
                        ),
                        // Vehicle Details
                        buildDetailsSection(
                          'Vehicle Details',
                          [
                            'Reg NO : ${booking['vehicleReg']}',
                            'Make : ${booking['vehicleMake']}',
                            'Model : ${booking['vehicleModel']}',
                            'Color : ${booking['vehicleColor']}',
                          ],
                        ),
                        // Vendor Details
                        buildDetailsSection(
                          'Vendor Details',
                          [
                            'Vendor : ${booking['provider']}',
                            'Email : ${booking['vendorEmail']}',
                            'Mobile Number : ${booking['vendorPhone']}',
                          ],
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

  // A function to build the details section
  Widget buildDetailsSection(String title, List<String> details) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 10),
          ...details.map((detail) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Text(
                  detail,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
              )),
          const SizedBox(height: 8),
        ],
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

import 'package:flutter/material.dart';
import 'package:theparkingdeals/core/theme_data/color_theme.dart';

class OverViewScreen extends StatefulWidget {
  const OverViewScreen({super.key});

  @override
  State<OverViewScreen> createState() => _OverViewScreenState();
}

class _OverViewScreenState extends State<OverViewScreen> {
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
          'Overview',
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildSectionTitle('Transfers'),
                    buildDetailText('Opening times: 24 Hours / 7 Days'),
                    buildDetailText(
                        'Estimated journey time to airport: Drop off at the terminal'),
                    buildDetailText(
                        'Your keys will stay with the car park whilst you are away'),
                    const SizedBox(height: 10),
                    buildSectionTitle('Why Book This Parking Space?'),
                    buildDetailText('You leave your keys'),
                    buildDetailText('No Transfer time (Meet & Greet service)'),
                    buildDetailText(
                        'Simply drive to the terminal and we will collect your car, allowing you to reach check-in within minutes.'),
                    buildDetailText(
                        'He will then photograph your car and drive it to our parking compound nearby.'),
                    buildDetailText(
                        'Chauffeur will meet you at the terminal building at the designated area to collect your car.'),
                    buildDetailText(
                        'All drivers are mature, uniformed, carry ID, and are fully insured to drive your vehicle.'),
                    const SizedBox(height: 10),
                    buildSectionTitle('Disabled Info'),
                    buildDetailText(
                        'No transfers are needed. Meet and Greet will be an excellent alternative for disabled customers who would find it difficult to use transfer buses.'),
                    buildDetailText(
                        'Your car is collected from the terminal when you leave and brought back to you at the terminal on return.'),
                    const SizedBox(height: 10),
                    buildSectionTitle('Additional Info'),
                    buildDetailText(
                        'Tyres are required to meet the legal limits.'),
                    buildDetailText('Vehicle must have valid road tax.'),
                    buildDetailText(
                        'Have sufficient petrol as it is parked off-airport.'),
                    buildDetailText('Vehicle must have valid MOT.'),
                    buildDetailText('Vehicle must be safe to drive.'),
                    const SizedBox(height: 10),
                    buildSectionTitle('Vehicle Restrictions'),
                    buildDetailText(
                        'Parking is for cars only, and cars must fit in a standard-sized parking space (2.4m wide x 4.8m long).'),
                    buildDetailText(
                        'Very large vehicles and minibuses may be refused if prior arrangements are not made.'),
                    const SizedBox(height: 10),
                    buildSectionTitle('Insurance'),
                    buildDetailText(
                        'All drivers are fully insured to drive your vehicle.'),
                    buildDetailText('Airport levy charges included.'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }

  Widget buildDetailText(String detail) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        detail,
        style: const TextStyle(fontSize: 14, color: Colors.black54),
      ),
    );
  }
}

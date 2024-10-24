import 'package:flutter/material.dart';
import 'package:theparkingdeals/core/theme_data/color_theme.dart';
import 'package:theparkingdeals/core/theme_data/text_theme.dart';

class QuoteScreen extends StatefulWidget {
  const QuoteScreen({super.key});

  @override
  State<QuoteScreen> createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  DateTime? selectedDropOffDate;
  TimeOfDay? selectedDropOffTime;
  DateTime? selectedPickUpDate;
  TimeOfDay? selectedPickUpTime;

  // Method to calculate time difference using the time package
  Duration? calculateTimeDifference() {
    if (selectedDropOffDate != null &&
        selectedDropOffTime != null &&
        selectedPickUpDate != null &&
        selectedPickUpTime != null) {
      final dropOffDateTime = DateTime(
        selectedDropOffDate!.year,
        selectedDropOffDate!.month,
        selectedDropOffDate!.day,
        selectedDropOffTime!.hour,
        selectedDropOffTime!.minute,
      );
      final pickUpDateTime = DateTime(
        selectedPickUpDate!.year,
        selectedPickUpDate!.month,
        selectedPickUpDate!.day,
        selectedPickUpTime!.hour,
        selectedPickUpTime!.minute,
      );

      // Use the time package's duration extension to calculate difference
      return pickUpDateTime.difference(dropOffDateTime);
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    Duration? timeDifference = calculateTimeDifference();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: surfaceSubtitle,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: textTitle),
          onPressed: () {
            Navigator.of(context).pushNamed('/moreScreen');
            // Navigator.pushNamedAndRemoveUntil(context, '/moreScreen', 
            //  (route) => false
            // );
          },
        ),
        title: const Text(
          'Get Quotes',
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
            borderRadius: BorderRadius.circular(40),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildDropdownField('Select airport', 'Select a airport'),
                const SizedBox(height: 16),
                buildDateField(
                  label: 'Drop off date *',
                  date: selectedDropOffDate,
                  onDateSelected: (date) => setState(() {
                    selectedDropOffDate = date;
                  }),
                ),
                const SizedBox(height: 16),
                buildTimeField(
                  label: 'Drop off time *',
                  time: selectedDropOffTime,
                  onTimeSelected: (time) => setState(() {
                    selectedDropOffTime = time;
                  }),
                ),
                const SizedBox(height: 16),
                buildDateField(
                  label: 'Pick Up date *',
                  date: selectedPickUpDate,
                  onDateSelected: (date) => setState(() {
                    selectedPickUpDate = date;
                  }),
                ),
                const SizedBox(height: 16),
                buildTimeField(
                  label: 'Pick Up time *',
                  time: selectedPickUpTime,
                  onTimeSelected: (time) => setState(() {
                    selectedPickUpTime = time;
                  }),
                ),
                const SizedBox(height: 10),
                // Display time difference
                if (timeDifference != null)
                  Text(
                    'Time difference: ${timeDifference.inHours} hours, ${timeDifference.inMinutes % 60} minutes',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                const SizedBox(height: 16),
                buildTextField(
                  label: 'Get coupon',
                  hintText: 'Enter promo code',
                  icon: Icons.card_giftcard,
                ),
                const SizedBox(height: 24),
                buildGetQuoteButton(),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: RichText(
                      text: TextSpan(
                    text: 'use ',
                    style: textTheme.titleSmall?.copyWith(color: textSubtitle),
                    children: const [
                      TextSpan(
                        text: 'wlcme',
                        style: TextStyle(color: primaryDefault),
                      ),
                      TextSpan(
                        text: 'promote code to get 20% off for your bookings',
                        style: TextStyle(color: textSubtitle),
                      ),
                    ],
                  )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper method for Dropdown
  Widget buildDropdownField(String label, String hintText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: DropdownButtonFormField<String>(
            decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 12),
            ),
            hint: Text(hintText),
            items: const [
              DropdownMenuItem(value: 'airport1', child: Text('Airport 1')),
              DropdownMenuItem(value: 'airport2', child: Text('Airport 2')),
            ],
            onChanged: (value) {},
          ),
        ),
      ],
    );
  }

  // Helper method for Date Field
  Widget buildDateField({
    required String label,
    required DateTime? date,
    required Function(DateTime) onDateSelected,
  }) {
    return GestureDetector(
      onTap: () => _selectDate(context, onDateSelected),
      child: buildTextField(
        label: label,
        hintText: date == null
            ? 'DD/MM/YYYY'
            : '${date.day}/${date.month}/${date.year}',
        icon: Icons.calendar_today,
      ),
    );
  }

  // Helper method for Time Field
  Widget buildTimeField({
    required String label,
    required TimeOfDay? time,
    required Function(TimeOfDay) onTimeSelected,
  }) {
    return GestureDetector(
      onTap: () => _selectTime(context, onTimeSelected),
      child: buildTextField(
        label: label,
        hintText: time == null ? 'Select a time' : time.format(context),
        icon: Icons.access_time,
      ),
    );
  }

  // Helper method for TextField with icon
  Widget buildTextField({
    required String label,
    required String hintText,
    required IconData icon,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(icon, color: Colors.purple),
            hintText: hintText,
            filled: true,
            fillColor: Colors.grey[200],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }

  // Get quote button
  Widget buildGetQuoteButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/guest-screen');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purple,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: const Text('GET QUOTE',
            style: TextStyle(fontSize: 16, color: surfaceSubtitle)),
      ),
    );
  }

  // Date picker method
  Future<void> _selectDate(
      BuildContext context, Function(DateTime) onDateSelected) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      onDateSelected(picked);
    }
  }

  // Time picker method
  Future<void> _selectTime(
      BuildContext context, Function(TimeOfDay) onTimeSelected) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      onTimeSelected(picked);
    }
  }
}

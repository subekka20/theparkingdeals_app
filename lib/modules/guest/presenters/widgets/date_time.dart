import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:theparkingdeals/core/theme_data/color_theme.dart';

class DateTimeCard extends StatefulWidget {
  const DateTimeCard({super.key});

  @override
  State<DateTimeCard> createState() => _DateTimeCardState();
}

class _DateTimeCardState extends State<DateTimeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: surfaceSubtitle,
        borderRadius: BorderRadius.circular(14.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: buildTextField(
        iconPath: "",  // Provide a valid asset path
        iconPath2: "",  // Provide a valid asset path
        label: "Drop - Off Details",
        date: "12th Dec 2024",
        time: "10:00 AM",
      ),
    );
  }
}

// Helper method for TextField with icon
Widget buildTextField({
  required String label,
  required String date,
  required String time,
  required String iconPath,
  required String iconPath2,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: const TextStyle(fontSize: 16, color: textBody),
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        children: [
          SvgPicture.asset(
            iconPath,
            width: 24,
            height: 24,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            date,
            style: const TextStyle(fontSize: 16, color: textBody),
          ),
          const SizedBox(
            width: 10,
          ),
          SvgPicture.asset(
            iconPath2,
            width: 24,
            height: 24,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            time,
            style: const TextStyle(fontSize: 16, color: textBody),
          ),
        ],
      )
    ],
  );
}

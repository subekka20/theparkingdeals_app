import 'package:flutter/material.dart';
import 'package:theparkingdeals/core/theme_data/color_theme.dart';
import 'package:theparkingdeals/core/theme_data/text_theme.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: surfaceSubtitle,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: textTitle),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Contact',
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
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                buildTextField(
                  label: 'Name',
                  hintText: '',
                ),
                const SizedBox(height: 15),
                buildTextField(
                  label: 'Email',
                  hintText: '',
                ),
                const SizedBox(height: 15),
                buildTextField(
                  label: 'Phone Number',
                  hintText: '',
                ),
                const SizedBox(height: 15),
                buildTextField(
                  label: 'Subject',
                  hintText: '',
                ),
                const SizedBox(height: 15),
                buildMessageTextField(
                    label: 'Message', hintText: '', hintMaxLines: 2),
                const SizedBox(height: 24),
                buildGetQuoteButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper method for TextField with icon
  Widget buildTextField({
    required String label,
    required String hintText,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: label,
            style: const TextStyle(fontSize: 16, color: textBody),
            children: const [
              TextSpan(
                text: ' *',
                style: TextStyle(color: primaryDefault),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
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

  // Helper method for TextField with icon
  Widget buildMessageTextField({
    required String label,
    required String hintText,
    required int hintMaxLines,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: label,
            style: const TextStyle(fontSize: 16, color: textBody),
            children: const [
              TextSpan(
                text: ' *',
                style: TextStyle(color: primaryDefault),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 150,
          child: TextFormField(
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: textBody),
            textAlign: TextAlign.start,
            textAlignVertical: TextAlignVertical.top,
            // controller: specialNotesController,
            decoration: InputDecoration(
              hintText: '',
              hintMaxLines: 2,
              hintStyle: textTheme.labelSmall!.copyWith(
                color: textBody,
              ),
              fillColor: Colors.grey[200],
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none,
              ),
            ),
            maxLines: null,
            expands: true,
          ),
        ),
      ],
    );
  }

  // contact button
  Widget buildGetQuoteButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purple,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: const Text('SEND',
            style: TextStyle(fontSize: 16, color: surfaceSubtitle)),
      ),
    );
  }
}

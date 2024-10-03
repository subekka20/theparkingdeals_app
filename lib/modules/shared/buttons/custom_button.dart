import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Gradient gradient;
  final double borderRadius;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.gradient = const LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      stops: [0.005, 0.3],
      colors: [Color(0xFFF55C5B), Color(0xFFE52D09)],
    ),
    this.borderRadius = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    bool isDisabled = onPressed == null;

    return Container(
      height: 48.0,
      decoration: BoxDecoration(
        color: isDisabled ? const Color(0xFFE52D09).withOpacity(0.3) : null,
        gradient: gradient,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: isDisabled ? null : onPressed,
          borderRadius: BorderRadius.circular(borderRadius),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.center,
            child: Text(
              text,
              // style: TextTheme.displayMedium!.copyWith(
              //   color: Colors.white,
              // ),
            ),
          ),
        ),
      ),
    );
  }
}

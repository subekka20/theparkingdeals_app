import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:theparkingdeals/core/theme_data/color_theme.dart';

class CustomButton extends StatelessWidget {
  final bool loading;
  final String? label;
  final VoidCallback? onPressed;
  final String? icon;
  final Color? backgroundColor;
  final Color? labelColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String? fontFamily;

  const CustomButton({
    super.key,
    this.label,
    this.onPressed,
    this.icon,
    this.loading = false,
    this.backgroundColor = const Color.fromARGB(255, 69, 82, 132),
    this.labelColor,
    this.fontSize = 14.0, 
    this.fontWeight = FontWeight.normal,
    this.fontFamily = "montserrat", 
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: loading ? () {} : onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? darkColorScheme.primaryContainer,
        foregroundColor: labelColor ?? Colors.white,
        disabledBackgroundColor: backgroundColor ?? borderDefault,
        shadowColor: const Color.fromRGBO(16, 24, 40, 0.05),
        elevation: 1,
        padding: const EdgeInsets.symmetric(horizontal: 18),
        side: const BorderSide(color: Colors.transparent, width: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null)
            SvgPicture.asset(
              icon!,
              width: 18,
              height: 18,
              color: const Color.fromRGBO(255, 255, 255, 1),
            ),
          if (icon != null && label != null)
            const SizedBox(
              width: 8,
            ),
          if (label != null)
            if (loading)
              const SizedBox(
                width: 18,
                height: 18,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
            else
              Text(
                label!,
                style: TextStyle(
                  color: labelColor ?? Colors.white,
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                  fontFamily: fontFamily, 
                ),
              ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:theparkingdeals/core/theme_data/color_theme.dart';
import 'package:theparkingdeals/core/theme_data/text_theme.dart';

class ListTiles extends StatefulWidget {
  final bool? divider;
  final String ? iconPath;
  final String name;
  final VoidCallback onTap;

  const ListTiles({
    super.key,
    this.divider = true,
    this.iconPath,
    required this.name,
    required this.onTap,
  });

  @override
  State<ListTiles> createState() => _ListTilesState();
}

class _ListTilesState extends State<ListTiles> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // Apply rounded corners for the tile
      decoration: BoxDecoration(
        color: surfaceDisabled,
        borderRadius: BorderRadius.circular(12), // Adjust as needed
      ),
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: InkWell(
        onTap: widget.onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                   // Check if iconPath is provided, if null display an empty container
                  if (widget.iconPath != null)
                    SvgPicture.asset(
                      widget.iconPath!,
                      width: 24,
                      height: 24,
                    )
                  else
                  const SizedBox(width: 16),
                  // Text style for the label
                  Text(
                    widget.name,
                    style: textTheme.bodySmall!.copyWith(
                      color: surfaceDarker,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              // Right arrow icon to indicate clickable list item
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

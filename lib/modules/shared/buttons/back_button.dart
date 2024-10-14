import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:theparkingdeals/core/theme_data/color_theme.dart';

class ButtonBackBox extends StatelessWidget {
  const ButtonBackBox({
    super.key,
    this.callbackFunction,
  });

  final void Function()? callbackFunction;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callbackFunction ?? () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: surfaceDefault,
          ),
          padding: const EdgeInsets.all(8),
          child: SvgPicture.asset(
            'assets/icons/chevron-left.svg',
            colorFilter:
                const ColorFilter.mode(surfaceDarker, BlendMode.srcATop),
          ),
        ),
      ),
    );
  }
}

class ButtonBack extends StatelessWidget {
  const ButtonBack({
    super.key,
    this.callbackFunction,
  });

  final void Function()? callbackFunction;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: callbackFunction ?? () {},
      style: const ButtonStyle(
        alignment: Alignment.center,
        backgroundColor: WidgetStatePropertyAll(
          surfaceSubtitle,
        ),
        visualDensity: VisualDensity.compact,
      ),
      padding: const EdgeInsets.all(0),
      icon: SvgPicture.asset(
        'assets/icons/chevron-left.svg',
        colorFilter:
            const ColorFilter.mode(surfaceDefault, BlendMode.srcATop),
      ),
    );
  }
}

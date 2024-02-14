import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  /// The icon to display.
  final IconData icon;

  /// The text to display.
  final String text;

  /// The size of the icon.
  final double iconSize;

  const AppIconText({
    Key? key,
    required this.icon,
    required this.text,
    this.iconSize = 24.0, // Default icon size
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: AppLayout.getHeight(12),
        horizontal: AppLayout.getWidth(12),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xFFBFC2DF),
            size: iconSize,
          ),
          const Gap(10), // Consistent spacing
          Text(
            text,
            style: Styles.textStyle,
          ),
        ],
      ),
    );
  }
}

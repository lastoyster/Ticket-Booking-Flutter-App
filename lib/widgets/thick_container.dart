import 'package:flutter/material.dart';

class ThickContainer extends StatelessWidget {
  /// Whether to use a custom color for the border.
  final bool isColor;

  const ThickContainer({Key? key, this.isColor = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 2.5,
          color: isColor ? const Color(0xff8accf7) : Colors.white,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  /// Whether to use white or grey color for decoration.
  final bool isWhite;

  /// The number of sections to generate.
  final int sections;

  /// The width of each section.
  final double width;

  const AppLayoutBuilderWidget({
    Key? key,
    this.isWhite = true,
    required this.sections,
    this.width = 3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          direction: Axis.horizontal,
          children: List.generate(
            (constraints.constrainWidth() / sections).floor(),
            (index) => SizedBox(
              width: width,
              height: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: isWhite ? Colors.white : Colors.grey.shade300,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

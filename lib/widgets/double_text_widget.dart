import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  
  const AppDoubleTextWidget({
    Key? key,
    required this.bigText,
    required this.smallText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,  // Displaying the big text
          style: Styles.headLineStyle2,  // Applying the specified style
        ),
        InkWell(  // InkWell for making the small text tappable
          onTap: () {
            print('You are tapped');
          },
          child: Text(
            smallText,  // Displaying the small text
            style: Styles.textStyle.copyWith(color: Styles.primaryColor),  // Applying the specified style and color
          ),
        ),
      ],
    );
  }
}

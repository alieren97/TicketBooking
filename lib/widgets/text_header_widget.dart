import 'package:flutter/material.dart';
import 'package:ticket_booking/utils/app_styles.dart';

class TextHeader extends StatelessWidget {
  final String title;
  final String buttonTitle;
  TextHeader({super.key, required this.title, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: Styles.headLineStyle2),
          InkWell(
              onTap: () {
                print("You are tapped");
              },
              child: Text(buttonTitle,
                  style: Styles.textStyle.copyWith(color: Styles.primaryColor)))
        ],
      );
  }
}

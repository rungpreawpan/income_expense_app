import 'package:flutter/material.dart';
import 'package:income_expense/components/text_font_style.dart';
import 'package:income_expense/constant/constant.dart';

class CalendarDetailCard extends StatelessWidget {
  final String icon;
  final String title;
  final String total;

  const CalendarDetailCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.total,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: margin,
        vertical: 4.0,
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20.0,
            backgroundColor: Colors.grey.shade300,
            child: Image.asset(
              icon,
              height: 24.0,
            ),
          ),
          const SizedBox(width: marginX2),
          Expanded(
            child: TextFontStyle(
              title,
              weight: FontWeight.bold,
              size: fontSizeL,
            ),
          ),
          TextFontStyle(
            '\$$total',
            size: fontSizeM,
            weight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}

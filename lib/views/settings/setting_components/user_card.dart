import 'package:flutter/material.dart';
import 'package:income_expense/components/text_font_style.dart';
import 'package:income_expense/constant/constant.dart';

class UserCard extends StatelessWidget {
  final String name;
  final String level;

  const UserCard({
    Key? key,
    required this.name,
    required this.level,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(marginX2),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 30.0,
          ),
          const SizedBox(width: marginX2),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFontStyle(
                name,
                weight: FontWeight.bold,
                size: fontSizeM,
              ),
              const SizedBox(height: margin),
              _memberLabel(level: level),
            ],
          ),
        ],
      ),
    );
  }

  _memberLabel({required String level}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: margin),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        children: [
          const Icon(Icons.credit_card),
          const SizedBox(width: 4.0),
          TextFontStyle('$level member'),
        ],
      ),
    );
  }
}

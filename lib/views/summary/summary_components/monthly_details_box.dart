import 'package:flutter/material.dart';
import 'package:income_expense/components/text_font_style.dart';
import 'package:income_expense/constant/constant.dart';

class MonthlyDetailsBox extends StatelessWidget {
  final String category;
  final String expense;

  const MonthlyDetailsBox({
    Key? key,
    required this.category,
    required this.expense,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      padding: const EdgeInsets.symmetric(horizontal: marginX2),
      margin: const EdgeInsets.only(bottom: margin),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: TextFontStyle(category),
            ),
            const VerticalDivider(
              color: Colors.grey,
              indent: 8.0,
              endIndent: 8.0,
            ),
            Expanded(
              flex: 1,
              child: TextFontStyle(expense),
            ),
          ],
        ),
      ),
    );
  }
}

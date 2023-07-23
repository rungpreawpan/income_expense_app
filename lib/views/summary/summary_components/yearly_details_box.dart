import 'package:flutter/material.dart';
import 'package:income_expense/components/text_font_style.dart';
import 'package:income_expense/constant/constant.dart';

class YearlyDetailsBox extends StatelessWidget {
  final String month;
  final String income;
  final String expense;

  const YearlyDetailsBox({
    Key? key,
    required this.month,
    required this.income,
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
              flex: 2,
              child: TextFontStyle(month),
            ),
            const VerticalDivider(
              color: Colors.grey,
              indent: 8.0,
              endIndent: 8.0,
            ),
            Expanded(
              flex: 1,
              child: TextFontStyle(income),
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

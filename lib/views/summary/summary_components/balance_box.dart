import 'package:flutter/material.dart';
import 'package:income_expense/components/text_font_style.dart';
import 'package:income_expense/constant/constant.dart';

class BalanceBox extends StatelessWidget {
  final String income;
  final String expense;
  final String balance;

  const BalanceBox({
    Key? key,
    required this.income,
    required this.expense,
    required this.balance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      padding: const EdgeInsets.all(marginX2),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            _balancedDetails('Income', income),
            VerticalDivider(
              color: Colors.grey.shade700,
            ),
            _balancedDetails('Expense', expense),
            VerticalDivider(
              color: Colors.grey.shade700,
            ),
            _balancedDetails('Balance', balance),
          ],
        ),
      ),
    );
  }

  _balancedDetails(String title, String balance) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFontStyle(
            title,
            size: fontSizeM,
            weight: FontWeight.bold,
          ),
          const SizedBox(height: 4.0),
          TextFontStyle('\$ $balance'),
        ],
      ),
    );
  }
}

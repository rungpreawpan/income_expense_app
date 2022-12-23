import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:income_expense/components/text_font_style.dart';
import 'package:income_expense/constant/constant.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: marginL),
      child: Column(
        children: [
          Container(
            height: 100.0,
            width: Get.width,
            padding: const EdgeInsets.symmetric(horizontal: marginL),
            decoration: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1.0,
                  blurRadius: 5.0,
                  offset: const Offset(1.0, 1.0),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      TextFontStyle('Total Balance'),
                      SizedBox(height: marginS),
                      TextFontStyle(
                        '\$ 5,000.00',
                        size: 22,
                        weight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      _incomeBox(),
                      const SizedBox(height: marginM),
                      _expenseBox(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: marginL),
        ],
      ),
    );
  }

  _incomeBox() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TextFontStyle(
          'Income',
          size: fontSizeXS,
        ),
        TextFontStyle(
          '\$ 59,000.00',
          size: fontSizeM,
          weight: FontWeight.bold,
        ),
      ],
    );
  }

  _expenseBox() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TextFontStyle(
          'Expense',
          size: fontSizeXS,
        ),
        TextFontStyle(
          '\$ 5,000.00',
          size: fontSizeM,
          weight: FontWeight.bold,
        ),
      ],
    );
  }
}

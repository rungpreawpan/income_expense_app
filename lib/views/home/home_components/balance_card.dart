import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:income_expense/components/text_font_style.dart';
import 'package:income_expense/constant/constant.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100.0,
          width: Get.width,
          padding: const EdgeInsets.all(marginL),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              TextFontStyle('Total Balance'),
              SizedBox(height: marginS),
              TextFontStyle(
                '\$ 5,000.00',
                size: fontSizeL,
                weight: FontWeight.bold,
              ),
            ],
          ),
        ),
        const SizedBox(height: marginL),
      ],
    );
  }
}

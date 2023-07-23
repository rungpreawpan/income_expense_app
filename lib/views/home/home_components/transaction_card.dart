import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:income_expense/components/text_font_style.dart';
import 'package:income_expense/constant/constant.dart';
import 'package:income_expense/views/home/transaction_card_details_page.dart';

class TransactionCard extends StatelessWidget {
  final String icon;
  final String title;
  final String total;
  final String updateTime;

  const TransactionCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.total,
    required this.updateTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: marginX2),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Get.to(
                () => TransactionCardDetailsPage(
                  appBarTitle: title,
                  total: '\$$total',
                  percent: '90',
                ),
              );
            },
            child: Container(
              height: 70.0,
              width: Get.width,
              padding: const EdgeInsets.symmetric(
                horizontal: marginX2,
                vertical: margin,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
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
                  //TODO: download icon
                  CircleAvatar(
                    radius: 25.0,
                    backgroundColor: Colors.grey.shade300,
                    child: Image.asset(
                      icon,
                      height: iconCardSize,
                    ),
                  ),
                  const SizedBox(width: marginX2),
                  Expanded(
                    child: TextFontStyle(
                      title,
                      size: fontSizeL,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextFontStyle(
                        '\$$total',
                        size: fontSizeM,
                        weight: FontWeight.bold,
                      ),
                      const SizedBox(height: 4.0),
                      TextFontStyle(
                        updateTime,
                        size: fontSizeXS,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: margin),
        ],
      ),
    );
  }
}

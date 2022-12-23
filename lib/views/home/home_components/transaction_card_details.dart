import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:income_expense/components/text_font_style.dart';
import 'package:income_expense/constant/constant.dart';
import 'package:income_expense/views/home/home_components/custom_chart.dart';
import 'package:income_expense/views/home/home_components/detail_card.dart';

class TransactionCardDetails extends StatelessWidget {
  final String appBarTitle;
  final String total;
  final String percent;

  const TransactionCardDetails({
    Key? key,
    required this.appBarTitle,
    required this.total,
    required this.percent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFontStyle(
          appBarTitle,
          size: fontAppBar,
          weight: FontWeight.bold,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: marginL),
          child: Column(
            children: [
              _totalBox(),
              const SizedBox(height: marginL),
              _dataList(),
            ],
          ),
        ),
      ),
    );
  }

  _totalBox() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: marginL),
      child: Container(
        height: 80.0,
        width: Get.width,
        padding: const EdgeInsets.symmetric(
          horizontal: marginL,
          vertical: marginM,
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
            CircleAvatar(
              radius: 30.0,
              backgroundColor: Colors.grey.shade300,
              child: Image.asset(
                'assets/icons/card/bread_outlined_icon.png',
                height: iconCardSize,
              ),
            ),
            const SizedBox(width: marginL),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFontStyle(
                            appBarTitle,
                            size: fontSizeXL,
                            weight: FontWeight.bold,
                          ),
                        ),
                        TextFontStyle(
                          total,
                          size: fontSizeL,
                          weight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child: CustomChart(percent: 30.0),
                      ),
                      const SizedBox(width: marginL),
                      TextFontStyle(
                        '$percent%',
                        size: fontSizeXS,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _dataList() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: marginL),
      child: SizedBox(
        height: 550.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextFontStyle(
              'Transactions:',
              size: fontSizeM,
              weight: FontWeight.bold,
            ),
            const SizedBox(height: marginM),
            ListView(
              shrinkWrap: true,
              children: const [
                DetailCard(
                  day: '24/12/22',
                  details: 'Lunch',
                  total: '\$13',
                ),
                DetailCard(
                  day: '24/12/22',
                  details: 'Lunch',
                  total: '\$13',
                ),
                DetailCard(
                  day: '24/12/22',
                  details: 'Lunch',
                  total: '\$13',
                ),
                DetailCard(
                  day: '24/12/22',
                  details: 'Lunch',
                  total: '\$13',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:income_expense/components/text_font_style.dart';
import 'package:income_expense/constant/constant.dart';
import 'package:income_expense/views/home/home_components/custom_chart.dart';
import 'package:income_expense/views/home/home_components/detail_card.dart';

class TransactionCardDetailsPage extends StatelessWidget {
  final String appBarTitle;
  final String total;
  final String percent;

  const TransactionCardDetailsPage({
    Key? key,
    required this.appBarTitle,
    required this.total,
    required this.percent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: TextFontStyle(
          appBarTitle,
          size: fontAppBar,
          weight: FontWeight.bold,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: marginX2),
          child: Column(
            children: [
              _totalBox(),
              const SizedBox(height: marginX2),
              Expanded(
                child: _dataList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _totalBox() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: marginX2),
      child: Container(
        height: 80.0,
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
            CircleAvatar(
              radius: 30.0,
              backgroundColor: Colors.grey.shade300,
              child: Image.asset(
                'assets/icons/card/bread_outlined_icon.png',
                height: iconCardSize,
              ),
            ),
            const SizedBox(width: marginX2),
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
                      const SizedBox(width: marginX2),
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
      padding: const EdgeInsets.symmetric(horizontal: marginX2),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextFontStyle(
              'Transactions:',
              size: fontSizeM,
              weight: FontWeight.bold,
            ),
            const SizedBox(height: margin),
            Scrollbar(
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    DetailCard(
                      day: '24/12/2022',
                      details: 'Lunchhhhhhhhhhhhhhhhhhh',
                      total: '\$13.00',
                    ),
                    DetailCard(
                      day: '24/12/2022',
                      details: 'Lunch',
                      total: '\$13.00',
                    ),
                    DetailCard(
                      day: '24/12/2022',
                      details: 'Lunch',
                      total: '\$13.00',
                    ),
                    DetailCard(
                      day: '24/12/2022',
                      details: 'Lunch',
                      total: '\$13.00',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
    );
  }
}

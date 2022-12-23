import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:income_expense/components/text_font_style.dart';
import 'package:income_expense/constant/constant.dart';

class DetailCard extends StatelessWidget {
  final String day;
  final String details;
  final String total;

  const DetailCard({
    Key? key,
    required this.day,
    required this.details,
    required this.total,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50.0,
          width: Get.width,
          padding: const EdgeInsets.all(marginM),
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
              Expanded(
                flex: 1,
                child: TextFontStyle(
                  day,
                  weight: FontWeight.bold,
                ),
              ),
              Expanded(
                flex: 3,
                child: TextFontStyle(
                  details,
                  weight: FontWeight.bold,
                ),
              ),
              Expanded(
                flex: 1,
                child: TextFontStyle(
                  total,
                  weight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: marginM),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:income_expense/components/text_font_style.dart';
import 'package:income_expense/constant/constant.dart';
import 'package:income_expense/model/chart_data.dart';
import 'package:income_expense/views/summary/summary_components/balance_box.dart';
import 'package:income_expense/views/summary/summary_components/monthly_details_box.dart';
import 'package:income_expense/views/summary/summary_components/pie_chart.dart';

class MonthlyView extends StatefulWidget {
  const MonthlyView({Key? key}) : super(key: key);

  @override
  State<MonthlyView> createState() => _MonthlyViewState();
}

class _MonthlyViewState extends State<MonthlyView> {
  final List<PieChartData> dataList = [
    PieChartData('David', 25),
    PieChartData('Steve', 38),
    PieChartData('Jack', 34),
    PieChartData('Others', 52),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _monthSelect(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: marginX2),
            child: Column(
              children: [
                const BalanceBox(
                  income: '100,000.00',
                  expense: '10,000.00',
                  balance: '100,000,000.00',
                ),
                const SizedBox(height: margin),
                SizedBox(
                  height: Get.height / 4,
                  child: PieChart(dataList: dataList),
                ),
                const SizedBox(height: margin),
                Expanded(
                  child: SingleChildScrollView(
                    child: _details(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  _monthSelect() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {},
          child: const Icon(Icons.navigate_before_rounded),
        ),
        const TextFontStyle(
          'February 2023',
          size: fontSizeXL,
          weight: FontWeight.bold,
        ),
        InkWell(
          onTap: () {},
          child: const Icon(Icons.navigate_next_rounded),
        ),
      ],
    );
  }

  _details() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(margin),
          child: Row(
            children: const [
              Expanded(
                flex: 3,
                child: TextFontStyle(
                  'Categories',
                  weight: FontWeight.bold,
                ),
              ),
              Expanded(
                flex: 1,
                child: TextFontStyle(
                  'Expense',
                  weight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const MonthlyDetailsBox(
          category: 'Food',
          expense: '100',
        ),
        const MonthlyDetailsBox(
          category: 'Food',
          expense: '100',
        ),
        const MonthlyDetailsBox(
          category: 'Food',
          expense: '100',
        ),
        const MonthlyDetailsBox(
          category: 'Food',
          expense: '100',
        ),
        const MonthlyDetailsBox(
          category: 'Food',
          expense: '100',
        ),
        const MonthlyDetailsBox(
          category: 'Food',
          expense: '100',
        ),
      ],
    );
  }
}

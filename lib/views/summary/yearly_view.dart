import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:income_expense/components/text_font_style.dart';
import 'package:income_expense/constant/constant.dart';
import 'package:income_expense/model/chart_data.dart';
import 'package:income_expense/views/summary/summary_components/balance_box.dart';
import 'package:income_expense/views/summary/summary_components/line_chart.dart';
import 'package:income_expense/views/summary/summary_components/yearly_details_box.dart';

class YearlyView extends StatefulWidget {
  const YearlyView({Key? key}) : super(key: key);

  @override
  State<YearlyView> createState() => _YearlyViewState();
}

class _YearlyViewState extends State<YearlyView> {
  List<ColumnChartData> dataList = [
    ColumnChartData('Jan', 35, 30),
    ColumnChartData('Feb', 28, 20),
    ColumnChartData('Mar', 34, 40),
    ColumnChartData('Apr', 32, 20),
    ColumnChartData('May', 40, 50),
    ColumnChartData('Jun', 35, 30),
    ColumnChartData('Jul', 28, 20),
    ColumnChartData('Aug', 34, 40),
    ColumnChartData('Sep', 32, 20),
    ColumnChartData('Oct', 40, 50),
    ColumnChartData('Nov', 32, 20),
    ColumnChartData('Dec', 40, 50),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _yearSelect(),
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
                const SizedBox(height: marginX2),
                SizedBox(
                  height: Get.height / 4,
                  child: LineChart(dataList: dataList),
                ),
                const SizedBox(height: marginX2),
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

  _yearSelect() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {},
          child: const Icon(Icons.navigate_before_rounded),
        ),
        const TextFontStyle(
          '2023',
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
                flex: 2,
                child: TextFontStyle(
                  'Month',
                  weight: FontWeight.bold,
                ),
              ),
              Expanded(
                flex: 1,
                child: TextFontStyle(
                  'Income',
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
        SingleChildScrollView(
          child: Column(
            children: const [
              YearlyDetailsBox(
                month: 'test',
                income: '100',
                expense: '100',
              ),
              YearlyDetailsBox(
                month: 'test',
                income: '100',
                expense: '100',
              ),
              YearlyDetailsBox(
                month: 'test',
                income: '100',
                expense: '100',
              ),
              YearlyDetailsBox(
                month: 'test',
                income: '100',
                expense: '100',
              ),
              YearlyDetailsBox(
                month: 'test',
                income: '100',
                expense: '100',
              ),
              YearlyDetailsBox(
                month: 'test',
                income: '100',
                expense: '100',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

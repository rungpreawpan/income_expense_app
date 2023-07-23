import 'package:flutter/material.dart';
import 'package:income_expense/constant/constant.dart';
import 'package:income_expense/views/summary/monthly_view.dart';
// import 'package:income_expense/views/summary/weekly_view.dart';
import 'package:income_expense/views/summary/yearly_view.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, //3,
      child: Scaffold(
        extendBody: true,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              top: marginX2,
              left: marginX2,
              right: marginX2,
            ),
            child: Column(
              children: [
                Container(
                  height: 40.0,
                  padding: const EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TabBar(
                    indicator: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    labelStyle: const TextStyle(
                      fontSize: fontSizeM,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),
                    tabs: const [
                      Tab(text: 'Yearly'),
                      Tab(text: 'Monthly'),
                      // Tab(text: 'Weekly'),
                    ],
                  ),
                ),
                const SizedBox(height: marginX2),
                const Expanded(
                  child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      YearlyView(),
                      MonthlyView(),
                      // WeeklyView(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

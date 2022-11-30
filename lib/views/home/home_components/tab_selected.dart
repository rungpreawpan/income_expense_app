import 'package:flutter/material.dart';
import 'package:income_expense/components/text_font_style.dart';
import 'package:income_expense/constant/constant.dart';
import 'package:income_expense/views/home/home_components/transaction.dart';
import 'package:income_expense/views/home/home_components/transaction_card.dart';

class TabSelected extends StatelessWidget {
  const TabSelected({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
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
                fontFamily: 'SukhumvitSet',
              ),
              tabs: const [
                Tab(text: 'Income'),
                Tab(text: 'Expense'),
              ],
            ),
          ),
          const SizedBox(height: marginL),
          const TextFontStyle(
            'Transactions',
            size: fontSizeM,
            weight: FontWeight.bold,
          ),
          const SizedBox(height: marginL),
          Container(
            height: 300,
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
            child: const TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                Transaction(
                  transactionCard: [
                    TransactionCard(),
                  ],
                ),
                Transaction(
                  transactionCard: [],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

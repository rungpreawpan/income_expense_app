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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: marginL),
            child: Container(
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
                  Tab(text: 'Income'),
                  Tab(text: 'Expense'),
                ],
              ),
            ),
          ),
          const SizedBox(height: marginL),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: marginL),
            child: TextFontStyle(
              'Transactions',
              size: fontSizeM,
              weight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: marginL),
          const SizedBox(
            height: 400,
            child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                Transaction(
                  transactionCard: [
                    TransactionCard(
                      icon: 'assets/icons/card/bread_outlined_icon.png',
                      title: 'Food',
                      total: '200.00',
                      updateTime: 'Yesterday',
                    ),
                    TransactionCard(
                      icon: 'assets/icons/card/shopping_outlined_icon.png',
                      title: 'Shopping',
                      total: '142.85',
                      updateTime: 'Yesterday',
                    ),
                    TransactionCard(
                      icon: 'assets/icons/card/bread_outlined_icon.png',
                      title: 'Food',
                      total: '142.85',
                      updateTime: 'Yesterday',
                    ),
                    TransactionCard(
                      icon: 'assets/icons/card/utilities_outlined_icon.png',
                      title: 'Utilities',
                      total: '142.85',
                      updateTime: 'Yesterday',
                    ),
                    TransactionCard(
                      icon: 'assets/icons/card/bread_outlined_icon.png',
                      title: 'Food',
                      total: '142.85',
                      updateTime: 'Yesterday',
                    ),
                    TransactionCard(
                      icon: 'assets/icons/card/bread_outlined_icon.png',
                      title: 'Food',
                      total: '142.85',
                      updateTime: 'Yesterday',
                    ),
                  ],
                ),
                Transaction(
                  transactionCard: [
                    TransactionCard(
                      icon: 'assets/icons/card/bread_outlined_icon.png',
                      title: 'Food',
                      total: '142.85',
                      updateTime: 'Yesterday',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

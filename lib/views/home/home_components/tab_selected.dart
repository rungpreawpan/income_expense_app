import 'package:flutter/material.dart';
import 'package:income_expense/components/text_font_style.dart';
import 'package:income_expense/constant/constant.dart';
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
            padding: const EdgeInsets.symmetric(horizontal: marginX2),
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
          const SizedBox(height: marginX2),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: marginX2),
            child: TextFontStyle(
              'Transactions',
              size: fontSizeM,
              weight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: margin),
          Expanded(
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Scrollbar(
                  child: SingleChildScrollView(
                    child: Column(
                      children: const [
                        SizedBox(height: 4.0),
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
                        TransactionCard(
                          icon: 'assets/icons/card/bread_outlined_icon.png',
                          title: 'Food',
                          total: '142.85',
                          updateTime: 'Yesterday',
                        ),
                      ],
                    ),
                  ),
                ),
                Scrollbar(
                  child: SingleChildScrollView(
                    child: Column(
                      children: const [
                        SizedBox(height: 4.0),
                        TransactionCard(
                          icon: 'assets/icons/card/bread_outlined_icon.png',
                          title: 'Food',
                          total: '142.85',
                          updateTime: 'Yesterday',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

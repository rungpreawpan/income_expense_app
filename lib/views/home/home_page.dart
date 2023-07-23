import 'package:flutter/material.dart';
import 'package:income_expense/views/home/home_components/balance_card.dart';
import 'package:income_expense/views/home/home_components/tab_selected.dart';
import 'package:income_expense/views/home/home_components/user_detail.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: const [
            UserDetails(),
            BalanceCard(),
            Expanded(
              child: TabSelected(),
            ),
          ],
        ),
      ),
    );
  }
}

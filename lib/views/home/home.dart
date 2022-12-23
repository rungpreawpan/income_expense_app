import 'package:flutter/material.dart';
import 'package:income_expense/views/home/home_components/balance_card.dart';
import 'package:income_expense/views/home/home_components/tab_selected.dart';
import 'package:income_expense/views/home/home_components/user_detail.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: const [
            UserDetails(),
            BalanceCard(),
            TabSelected(),
          ],
        ),
      ),
    );
  }
}

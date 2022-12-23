import 'package:flutter/material.dart';
import 'package:income_expense/constant/constant.dart';

class Transaction extends StatelessWidget {
  final List<Widget> transactionCard;

  const Transaction({
    Key? key,
    this.transactionCard = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Scrollbar(
        child: ListView(
          padding: const EdgeInsets.only(top: marginS),
          children: transactionCard,
        ),
      ),
    );
  }
}
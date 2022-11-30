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
      height: 300,
      padding: const EdgeInsets.all(marginL),
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
      child: ListView(
        children: transactionCard,
      ),
    );
  }
}
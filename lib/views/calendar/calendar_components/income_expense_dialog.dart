import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:income_expense/components/text_font_style.dart';
import 'package:income_expense/constant/constant.dart';

class IncomeExpenseDialog extends StatefulWidget {
  const IncomeExpenseDialog({Key? key}) : super(key: key);

  @override
  State<IncomeExpenseDialog> createState() => _IncomeExpenseDialogState();
}

class _IncomeExpenseDialogState extends State<IncomeExpenseDialog> {
  bool income = false;
  bool expense = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      content: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: 200.0,
          maxWidth: Get.width,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _selectModeButton(
              icon: Icons.attach_money_rounded,
              title: 'income',
              isSelected: income,
            ),
            const SizedBox(width: marginX2),
            _selectModeButton(
              icon: Icons.money_off_csred_rounded,
              title: 'expense',
              isSelected: expense,
            ),
          ],
        ),
      ),
    );
  }

  _selectModeButton({
    required IconData icon,
    required String title,
    required bool isSelected,
  }) {
    return InkWell(
      onTap: () {
        if (title == 'income') {
          income = !income;
          expense = false;
          setState(() {});
        } else {
          expense = !expense;
          income = false;
          setState(() {});
        }
      },
      child: Container(
        padding: const EdgeInsets.all(margin),
        decoration: BoxDecoration(
          color: isSelected ? Colors.grey.shade400 : Colors.transparent,
          borderRadius: BorderRadius.circular(10.0),
          border: !isSelected
              ? Border.all(
                  color: Colors.grey,
                  width: 1.5,
                )
              : null,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon),
            const SizedBox(height: margin),
            TextFontStyle(
              title,
            ),
          ],
        ),
      ),
    );
  }
}

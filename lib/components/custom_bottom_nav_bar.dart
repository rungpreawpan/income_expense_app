import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:income_expense/constant/constant.dart';
import 'package:income_expense/views/calendar/calendar_components/income_expense_dialog.dart';
import 'package:income_expense/views/calendar/calendar_page.dart';
import 'package:income_expense/views/home/home_page.dart';
import 'package:income_expense/views/settings/settings_page.dart';
import 'package:income_expense/views/summary/summary_page.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentIndex = 0;

  final List _screen = [
    const HomePage(),
    const CalendarPage(),
    const SummaryPage(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _screen[currentIndex],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (currentIndex == 0) {
            print('currentIndex: $currentIndex');
          } else if (currentIndex == 1) {
            Get.dialog(const IncomeExpenseDialog());
          } else if (currentIndex == 2) {
            print('currentIndex: $currentIndex');
          } else if (currentIndex == 3) {
            print('currentIndex: $currentIndex');
          }
        },
        backgroundColor: Colors.grey.shade400,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: 60.0,
        elevation: 8.0,
        shape: const CircularNotchedRectangle(),
        notchMargin: margin,
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  currentIndex = 0;
                  setState(() {});
                },
                child: currentIndex == 0
                    ? Image.asset(
                        'assets/icons/home_filled_icon.png',
                        height: iconAppbarSize,
                      )
                    : Image.asset(
                        'assets/icons/home_outlined_icon.png',
                        height: iconAppbarSize,
                        color: Colors.grey,
                      ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  currentIndex = 1;
                  setState(() {});
                },
                child: currentIndex == 1
                    ? Image.asset(
                        'assets/icons/calendar_filled_icon.png',
                        height: iconAppbarSize,
                      )
                    : Image.asset(
                        'assets/icons/calendar_outlined_icon.png',
                        height: iconAppbarSize,
                        color: Colors.grey,
                      ),
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  currentIndex = 2;
                  setState(() {});
                },
                child: currentIndex == 2
                    ? Image.asset(
                        'assets/icons/summary_filled_icon.png',
                        height: iconAppbarSize,
                      )
                    : Image.asset(
                        'assets/icons/summary_outlined_icon.png',
                        height: iconAppbarSize,
                        color: Colors.grey,
                      ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  currentIndex = 3;
                  setState(() {});
                },
                child: currentIndex == 3
                    ? Image.asset(
                        'assets/icons/settings_filled_icon.png',
                        height: iconAppbarSize,
                      )
                    : Image.asset(
                        'assets/icons/settings_outlined_icon.png',
                        height: iconAppbarSize,
                        color: Colors.grey,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:income_expense/constant/constant.dart';
import 'package:income_expense/views/calendar/calendar.dart';
import 'package:income_expense/views/home/home.dart';
import 'package:income_expense/views/settings/settings.dart';
import 'package:income_expense/views/summary/summary.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentIndex = 0;

  //TODO: add circle with plus icon in screen 3
  final List _screen = const [
    Home(),
    Calendar(),
    Summary(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(
        child: _screen[currentIndex],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 8,
              blurRadius: 10,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: SafeArea(
          child: SizedBox(
            height: 60.0,
            child: BottomNavigationBar(
              backgroundColor: Colors.transparent,
              type: BottomNavigationBarType.fixed,
              elevation: 0.0,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey,
              selectedFontSize: 10.0,
              unselectedFontSize: 10.0,
              currentIndex: currentIndex,
              onTap: (index) {
                currentIndex = index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                  icon: currentIndex == 0
                      ? Image.asset(
                          'assets/icons/home_filled_icon.png',
                          height: iconSize,
                        )
                      : Image.asset(
                          'assets/icons/home_outlined_icon.png',
                          height: iconSize,
                          color: Colors.grey,
                        ),
                  label: 'home',
                  tooltip: '',
                ),
                BottomNavigationBarItem(
                  icon: currentIndex == 1
                      ? Image.asset(
                          'assets/icons/calendar_filled_icon.png',
                          height: iconSize,
                        )
                      : Image.asset(
                          'assets/icons/calendar_outlined_icon.png',
                          height: iconSize,
                          color: Colors.grey,
                        ),
                  label: 'Calendar',
                  tooltip: '',
                ),
                BottomNavigationBarItem(
                  icon: currentIndex == 2
                      ? Image.asset(
                          'assets/icons/summary_filled_icon.png',
                          height: iconSize,
                        )
                      : Image.asset(
                          'assets/icons/summary_outlined_icon.png',
                          height: iconSize,
                          color: Colors.grey,
                        ),
                  label: 'Summary',
                  tooltip: '',
                ),
                BottomNavigationBarItem(
                  icon: currentIndex == 3
                      ? Image.asset(
                          'assets/icons/settings_filled_icon.png',
                          height: iconSize,
                        )
                      : Image.asset(
                          'assets/icons/settings_outlined_icon.png',
                          height: iconSize,
                          color: Colors.grey,
                        ),
                  label: 'Settings',
                  tooltip: '',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

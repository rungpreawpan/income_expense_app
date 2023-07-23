import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:income_expense/components/custom_bottom_nav_bar.dart';
import 'package:income_expense/components/text_font_style.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _delay();
  }

  _delay() async {
    await Future.delayed(const Duration(seconds: 1));
    Get.offAll(() => const CustomBottomNavigationBar());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: TextFontStyle('splash page'),
      ),
    );
  }
}

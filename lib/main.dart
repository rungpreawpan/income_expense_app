import 'package:flutter/material.dart';
import 'package:income_expense/components/custom_bottom_nav_bar.dart';
import 'package:income_expense/views/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        primarySwatch: Colors.grey,
      ),
      home: const CustomBottomNavigationBar(),
    );
  }
}

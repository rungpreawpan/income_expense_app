// import 'package:flutter/material.dart';
// import 'package:income_expense/components/text_font_style.dart';
// import 'package:income_expense/constant/constant.dart';
// import 'package:income_expense/views/summary/summary_components/balance_box.dart';
// import 'package:income_expense/views/summary/summary_components/weekly_details_box.dart';
//
// class WeeklyView extends StatelessWidget {
//   const WeeklyView({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         _monthSelect(),
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.only(top: marginL),
//             child: Column(
//               children: [
//                 const BalanceBox(
//                   income: '100,000.00',
//                   expense: '10,000.00',
//                   balance: '100,000,000.00',
//                 ),
//                 const SizedBox(height: marginM),
//                 Expanded(
//                   child: SingleChildScrollView(
//                     child: _details(),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
//   _monthSelect() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         InkWell(
//           onTap: () {},
//           child: const Icon(Icons.navigate_before_rounded),
//         ),
//         const TextFontStyle(
//           'February 2023',
//           size: fontSizeXL,
//           weight: FontWeight.bold,
//         ),
//         InkWell(
//           onTap: () {},
//           child: const Icon(Icons.navigate_next_rounded),
//         ),
//       ],
//     );
//   }
//
//   _details() {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(marginM),
//           child: Row(
//             children: const [
//               Expanded(
//                 flex: 3,
//                 child: TextFontStyle(
//                   'Week',
//                   weight: FontWeight.bold,
//                 ),
//               ),
//               Expanded(
//                 flex: 1,
//                 child: TextFontStyle(
//                   'Expense',
//                   weight: FontWeight.bold,
//                 ),
//               ),
//             ],
//           ),
//         ),
//         const WeeklyDetailsBox(week: '1', startDay: '1', expense: '100'),
//         const WeeklyDetailsBox(
//             week: '2', startDay: '2', endDay: '7', expense: '100'),
//         const WeeklyDetailsBox(week: '3', startDay: '1', expense: '100'),
//         const WeeklyDetailsBox(week: '4', startDay: '1', expense: '100'),
//       ],
//     );
//   }
// }

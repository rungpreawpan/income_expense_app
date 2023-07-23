// import 'package:flutter/material.dart';
// import 'package:income_expense/components/text_font_style.dart';
// import 'package:income_expense/constant/constant.dart';
//
// class WeeklyDetailsBox extends StatelessWidget {
//   final String week;
//   final String startDay;
//   final String? endDay;
//   final String expense;
//
//   const WeeklyDetailsBox({
//     Key? key,
//     required this.week,
//     required this.startDay,
//     this.endDay = '',
//     required this.expense,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 40.0,
//       padding: const EdgeInsets.symmetric(horizontal: marginL),
//       margin: const EdgeInsets.only(bottom: marginM),
//       decoration: BoxDecoration(
//         color: Colors.grey.shade200,
//         borderRadius: BorderRadius.circular(10.0),
//       ),
//       child: IntrinsicHeight(
//         child: Row(
//           children: [
//             Expanded(
//               flex: 3,
//               child: Row(
//                 children: [
//                   TextFontStyle(
//                     'Week $week',
//                     weight: FontWeight.bold,
//                   ),
//                   const SizedBox(width: marginS),
//                   Row(
//                     children: [
//                       const TextFontStyle('('),
//                       TextFontStyle(startDay),
//                       Visibility(
//                         visible: endDay != '',
//                         child: TextFontStyle(' - $endDay'),
//                       ),
//                       const TextFontStyle(')'),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             const VerticalDivider(
//               color: Colors.grey,
//               indent: 8.0,
//               endIndent: 8.0,
//             ),
//             Expanded(
//               flex: 1,
//               child: TextFontStyle(expense),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

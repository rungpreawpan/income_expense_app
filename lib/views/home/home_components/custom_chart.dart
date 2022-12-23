import 'package:flutter/material.dart';

class CustomChart extends StatelessWidget {
  final double percent;

  const CustomChart({
    Key? key,
    required this.percent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 8.0,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        Container(
          height: 8.0,
          width: percent,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ],
    );
  }
}

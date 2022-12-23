import 'package:flutter/material.dart';
import 'package:income_expense/constant/constant.dart';

class TextFontStyle extends StatelessWidget {
  final String data;
  final TextAlign? align;
  final double? size;
  final Color? color;
  final FontWeight? weight;
  final TextOverflow? overflow;

  const TextFontStyle(
    this.data, {
    Key? key,
        this.size,
        this.color,
        this.align,
        this.weight,
        this.overflow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: align ?? TextAlign.left,
      style: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: size ?? fontSizeS,
        color: color ?? textColorBlack,
        fontWeight: weight ?? FontWeight.normal,
        overflow: overflow,
      ),
    );
  }
}

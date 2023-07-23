import 'package:flutter/material.dart';
import 'package:income_expense/constant/constant.dart';

class CustomToggleButton extends StatefulWidget {
  final List<Widget> list;
  final List<bool> isSelected;
  final double minWidth;
  final double minHeight;

  const CustomToggleButton({
    Key? key,
    required this.list,
    required this.isSelected,
    this.minWidth = 35.0,
    this.minHeight = 25.0,
  }) : super(key: key);

  @override
  State<CustomToggleButton> createState() => _CustomToggleButtonState();
}

class _CustomToggleButtonState extends State<CustomToggleButton> {
    @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      direction: Axis.horizontal,
      onPressed: (int index) {
        setState(() {
          for (int i = 0; i < widget.isSelected.length; i++) {
            widget.isSelected[i] = i == index;
          }
        });
      },
      constraints: BoxConstraints(
        minHeight: widget.minHeight,
        minWidth: widget.minWidth,
      ),
      borderRadius: BorderRadius.circular(4.0),
      fillColor: Colors.grey,
      selectedColor: Colors.white,
      color: Colors.black,
      splashColor: Colors.transparent,
      isSelected: widget.isSelected,
      children: widget.list,
    );
  }
}

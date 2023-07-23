import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:income_expense/components/text_font_style.dart';
import 'package:income_expense/constant/constant.dart';

class SettingsDetails extends StatelessWidget {
  final String title;
  final Function()? onTap;
  final Widget? action;
  final Function()? onAction;

  const SettingsDetails({
    Key? key,
    required this.title,
    this.onTap,
    this.action,
    this.onAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: Get.width,
        padding: const EdgeInsets.symmetric(horizontal: marginX2),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1.0,
              blurRadius: 3.0,
              offset: const Offset(1.0, 1.0),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextFontStyle(
              title,
              size: fontSizeM,
              weight: FontWeight.bold,
            ),
            action != null
                ? InkWell(
                    onTap: action != null ? onAction : null,
                    child: action,
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}

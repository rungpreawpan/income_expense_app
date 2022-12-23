import 'package:flutter/material.dart';
import 'package:income_expense/components/text_font_style.dart';
import 'package:income_expense/constant/constant.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: marginL,
        right: marginL,
        top: marginM,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                child: Image.asset(
                  'assets/icons/account_outlined_icon.png',
                  height: iconSize,
                ),
              ),
              const SizedBox(width: marginL),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  TextFontStyle(
                    'Welcome!',
                    size: fontSizeXS,
                  ),
                  SizedBox(height: marginS),
                  TextFontStyle(
                    'Anne Hathaway',
                    size: fontSizeL,
                    weight: FontWeight.bold,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: marginL),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:income_expense/components/text_font_style.dart';
import 'package:income_expense/constant/constant.dart';
import 'package:income_expense/views/home/profile_page.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: marginX2,
        right: marginX2,
        top: margin,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Get.to(() => const ProfilePage());
                },
                child: CircleAvatar(
                  backgroundColor: Colors.grey.shade200,
                  child: Image.asset(
                    'assets/icons/account_outlined_icon.png',
                    height: iconSize,
                  ),
                ),
              ),
              const SizedBox(width: marginX2),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  TextFontStyle(
                    'Welcome!',
                    size: fontSizeXS,
                  ),
                  SizedBox(height: 4.0),
                  TextFontStyle(
                    'Anne Hathaway',
                    size: fontSizeL,
                    weight: FontWeight.bold,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: marginX2),
        ],
      ),
    );
  }
}

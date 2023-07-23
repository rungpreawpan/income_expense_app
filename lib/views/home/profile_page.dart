import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:income_expense/components/text_font_style.dart';
import 'package:income_expense/constant/constant.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: const TextFontStyle(
          'Profile',
          size: fontAppBar,
          weight: FontWeight.bold,
        ),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(marginX2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _profilePic(),
          ],
        ),
      ),
    );
  }

  _profilePic() {
    return SizedBox(
      width: 110.0,
      height: 110.0,
      child: Stack(
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey.shade200,
            radius: 50.0,
            child: Image.asset(
              'assets/icons/account_outlined_icon.png',
              height: iconCardSize,
            ),
          ),
          Positioned(
            bottom: 5.0,
            right: 5.0,
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              radius: 20.0,
              child: Image.asset(
                'assets/icons/camera_outlined_icon.png',
                height: iconSize,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

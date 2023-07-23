import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:income_expense/components/text_font_style.dart';
import 'package:income_expense/constant/constant.dart';
import 'package:income_expense/views/settings/setting_components/custom_toggle_buton.dart';
import 'package:income_expense/views/settings/setting_components/settings_details.dart';

import 'setting_components/user_card.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final List<Widget> _themeList = const [
    Icon(Icons.light_mode, size: iconSize),
    Icon(Icons.dark_mode, size: iconSize)
  ];
  final List<Widget> _languageList = const [
    Text('En'),
    Text('Th')
  ];
  final List<bool> _selectedTheme = <bool>[true, false];
  final List<bool> _selectedLanguage = <bool>[true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const TextFontStyle(
          'Settings',
          weight: FontWeight.bold,
          size: fontAppBar,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(marginX2),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const UserCard(
                name: 'Anne',
                level: 'Gold',
              ),
              const SizedBox(height: marginX2),
              SettingsDetails(
                title: 'Theme',
                action: CustomToggleButton(
                  list: _themeList,
                  isSelected: _selectedTheme,
                ),
              ),
              const SizedBox(height: margin),
              SettingsDetails(
                title: 'Language',
                action: CustomToggleButton(
                  list: _languageList,
                  isSelected: _selectedLanguage,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

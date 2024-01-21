import 'package:flutter/material.dart';

class ChooseLanguage {
  final String language;
    IconData? icon;

  ChooseLanguage({required this.language, required this.icon});
}

List<ChooseLanguage> chooseLanguages = [
  ChooseLanguage(language: 'English', icon: Icons.circle_outlined),
  ChooseLanguage(language: 'Indonesia', icon: Icons.circle_outlined)
];
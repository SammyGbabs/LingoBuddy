import 'package:flutter/material.dart';

class LanguageSelector extends StatelessWidget {
  final String language;
  final String flag;

  LanguageSelector({required this.language, required this.flag});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.asset(flag, width: 24, height: 24),
        SizedBox(width: 8),
        Text(
          language,
          style: TextStyle(
            fontFamily: 'Manrope',
            fontWeight: FontWeight.bold,
            color: Color(0xFF000000),
          ),
        ),
      ],
    );
  }
}

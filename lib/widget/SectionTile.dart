import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;

  SettingsTile({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Color(0xFF544C4C)),
      title: Text(
        title,
        style: const TextStyle(
            color: Color(0xFF000000), fontWeight: FontWeight.bold),
      ),
    );
  }
}

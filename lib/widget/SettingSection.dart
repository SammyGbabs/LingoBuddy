import 'package:flutter/material.dart';
import 'package:screens/widget/SectionTile.dart';

class SettingsSection extends StatelessWidget {
  final String title;
  final List<SettingsTile> tiles;

  SettingsSection({required this.title, required this.tiles});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF000000),
              fontSize: 16,
            ),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFE3E8F2),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              children: tiles,
            ),
          ),
        ],
      ),
    );
  }
}

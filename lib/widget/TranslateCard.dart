import 'package:flutter/material.dart';

class TranslationCard extends StatelessWidget {
  final String language;
  final String text;
  final bool isInput;

  TranslationCard(
      {required this.language, required this.text, required this.isInput});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color(0xFFF7FAFA),
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Color(0xFFE3E8F2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    language,
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF005BBF),
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.volume_up, color: Color(0xFF005BBF)),
                ],
              ),
              if (isInput) Icon(Icons.close, color: Color(0xFF000000)),
            ],
          ),
          SizedBox(height: 10),
          Text(
            text,
            style: TextStyle(
              color: Color(0xFF141C24),
              fontSize: 16,
            ),
          ),
          if (isInput) ...[
            SizedBox(height: 10),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Translate
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Color(0xFF000000),
                  backgroundColor: Color(0xFFF5C754), // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text(
                  'Translate',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ] else ...[
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Icon(Icons.copy, color: Color(0xFFF5C754)),
                SizedBox(width: 8),
                Icon(Icons.share, color: Color(0xFFF5C754)),
                SizedBox(width: 8),
                Icon(Icons.star_border, color: Color(0xFFF5C754)),
              ],
            ),
          ],
        ],
      ),
    );
  }
}

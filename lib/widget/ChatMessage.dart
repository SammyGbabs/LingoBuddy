import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  final String sender;
  final String text;
  final bool isMe;
  final String avatarPath;

  ChatMessage(
      {required this.sender,
      required this.text,
      required this.isMe,
      required this.avatarPath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          if (!isMe) ...[
            Padding(
              padding: const EdgeInsets.only(
                  top: 28.0), // Adjust this value to move the avatar down
              child: CircleAvatar(
                backgroundImage: AssetImage(avatarPath),
                backgroundColor: Color(0xFFE3E8F2),
              ),
            ),
            SizedBox(width: 10.0),
          ],
          Expanded(
            child: Column(
              crossAxisAlignment:
                  isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  sender,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF141C24),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5.0),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: isMe ? Color(0xFFF5C754) : Color(0xFFE3E8F2),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    text,
                    style: TextStyle(
                      color: isMe ? Color(0xFF141C24) : Color(0xFF141C24),
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (isMe) ...[
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.only(
                  top: 45.0), // Adjust this value to move the avatar down
              child: CircleAvatar(
                backgroundImage: AssetImage(avatarPath),
                backgroundColor: Color(0xFF405473),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

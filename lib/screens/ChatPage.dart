import 'package:flutter/material.dart';
import 'package:screens/widget/ChatMessage.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7FAFA),
      appBar: AppBar(
        title: const Center(
          child: Padding(
            padding: EdgeInsets.only(left: 35.0),
            child: Text(
              'Chat LingoBuddy Tutors',
              style: TextStyle(
                fontFamily: 'Manrope',
                fontWeight: FontWeight.bold,
                color: Color(0xFF141C24),
              ),
            ),
          ),
        ),
        backgroundColor: const Color(0xFFFFFFFF),
        iconTheme: const IconThemeData(color: Color(0xFF141C24)),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.videocam_outlined,
              color: Color(0xFF141C24),
              size: 30.0,
              weight: 70.0,
            ),
            onPressed: () {},
          ),
          SizedBox(width: 16), // Add some space to the right of the icon
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(10.0),
              children: <Widget>[
                ChatMessage(
                  sender: "Lingobuddy",
                  text: "Hi, how can I help you today?",
                  isMe: false,
                  avatarPath: 'images/chatprofilepic0.png',
                ),
                ChatMessage(
                  sender: "Me",
                  text: "How do you say 'I want to book a session' in Spanish?",
                  isMe: true,
                  avatarPath: 'images/chatprofilepic.png',
                ),
                ChatMessage(
                  sender: "Lingobuddy",
                  text: "Quiero reservar una sesión.",
                  isMe: false,
                  avatarPath: 'images/chatprofilepic2.png',
                ),
              ],
            ),
          ),
          BottomNavigationBar(
            backgroundColor: Colors.white,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Color(0xFF141C24)),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.message_outlined, color: Color(0xFF141C24)),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings, color: Color(0xFFF5C754)),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Color(0xFF141C24)),
                label: '',
              ),
            ],
            type: BottomNavigationBarType.fixed,
          ),
        ],
      ),
    );
  }
}

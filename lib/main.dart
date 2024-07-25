import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

// Import all your screens
import 'package:screens/screens/ChatPage.dart';
import 'package:screens/screens/EditProfile.dart';
import 'package:screens/screens/FindTutor.dart';
import 'package:screens/screens/Home.dart';
import 'package:screens/screens/Landing.dart';
import 'package:screens/screens/LanguageSelection.dart';
import 'package:screens/screens/LanguageTranslatorPage.dart';
import 'package:screens/screens/SettingPage.dart';
import 'package:screens/screens/Signin.dart';
import 'package:screens/screens/SignupPage.dart';
import 'package:screens/screens/TeacherProfilePage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp();
  } catch (e) {
    print("Firebase initialization error: $e");
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LandingPage(), // Ensure this is the starting page you want
      ),
      // You can define routes if you need to navigate to other screens
      routes: {
        '/home': (context) => HomePage(),
        '/signin': (context) => Signin(),
        '/signup': (context) => SignUpPage(),
        // Add other routes here
      },
    );
  }
}

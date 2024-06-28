import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 240.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sign up or log in',
              style: TextStyle(
                color: Color(0xFF141C24), // Color for bold text
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'Join a community of\nlanguage learners and\nteachers from around the\nworld.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF141C24), // Color for bold text
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: 360,
              height: 48, // Height of the button
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFF5C754), // Button color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  // Sign up action
                },
                child: Text(
                  'Sign up for free',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Log in action
              },
              child: Text(
                'Log in',
                style: TextStyle(
                  color: Color(0xFF141C24), // Color for bold text
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'By continuing, you agree to the Terms of Use. Read our Privacy Policy.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

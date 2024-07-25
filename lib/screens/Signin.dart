import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:screens/screens/LanguageSelection.dart';

class Signin extends StatefulWidget {
  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<Signin> {
  bool _isPasswordVisible = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _errorMessage = '';

  Future<void> _signIn() async {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      setState(() {
        _errorMessage = 'Please fill in all fields';
      });
      return;
    }

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      // Navigate to the next page on successful sign-in
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LanguageSelectionPage()),
      );
    } catch (e) {
      setState(() {
        _errorMessage = 'Sign-in failed. Please check your credentials and try again.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sign In Now',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'WELCOME BACK',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: OutlinedButton.icon(
                  icon: Image.asset('images/googleicon.png', height: 24),
                  label: const Text('Sign in with Google'),
                  onPressed: () {
                    // Add Google sign-in logic here if needed
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.black,
                    side: const BorderSide(
                      color: Color.fromARGB(255, 176, 173, 172),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Expanded(
                    child: Divider(color: Colors.grey),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('or'),
                  ),
                  Expanded(
                    child: Divider(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Email",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 162, 159, 157)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 162, 159, 157)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  hintText: 'Enter your email',
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 162, 159, 157),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Password",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelStyle: const TextStyle(
                    color: Color.fromARGB(255, 144, 142, 140),
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFE7E5E4)),
                  ),
                  hintText: '●●●●●●●●●●●●●●●',
                  hintStyle: const TextStyle(
                    color: Color.fromARGB(255, 162, 159, 157),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                      color: Color.fromARGB(255, 162, 159, 157),
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  ),
                ),
                obscureText: !_isPasswordVisible,
              ),
              if (_errorMessage.isNotEmpty) ...[
                const SizedBox(height: 10),
                Text(
                  _errorMessage,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 14,
                  ),
                ),
              ],
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: _signIn,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFDFC25A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                      color: Color(0xFFFAFAF9),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'By signing in, you agree to our Terms of use and Privacy Policy.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

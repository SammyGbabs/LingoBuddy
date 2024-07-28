import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'LanguageSelection.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> _signUpWithEmail() async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      // Navigate to the next page or show success message
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LanguageSelectionPage()),
      );
    } catch (e) {
      // Handle sign-up errors
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
    }
  }

  Future<void> _signUpWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await _auth.signInWithCredential(credential);

      // Navigate to the next page or show success message
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LanguageSelectionPage()),
      );
    } catch (e) {
      // Handle Google sign-in errors
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 50.0),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    const Text(
    'Sign Up Now',
    style: TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 24,
    ),
    ),
    const SizedBox(height: 8),
    const Text(
    'Join Lingobuddy Today!',
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
    label: const Text('Sign up with Google'),
    onPressed: _signUpWithGoogle,
    style: OutlinedButton.styleFrom(
    foregroundColor: Colors.black,
    side: const BorderSide(color: Color.fromARGB(255, 176, 173, 172)),
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
    "Username",
    style: TextStyle(
    color: Colors.black,
    ),
    ),
    ),
    SizedBox(height: 5),
    TextField(
    controller: _usernameController,
    decoration: InputDecoration(
    border: OutlineInputBorder(
    borderSide: BorderSide(color: Color.fromARGB(255, 162, 159, 157)),
    ),
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color.fromARGB(255, 162, 159, 157)),
    ),
    focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFE7E5E4)),
    ),
    hintText: 'Enter your username',
    hintStyle: TextStyle(
    color: Color.fromARGB(255, 162, 159, 157),
    ),
    ),
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
    SizedBox(height: 5),
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
    SizedBox(height: 5),
    TextField(
    controller: _passwordController,
    decoration: InputDecoration(
    labelStyle: const TextStyle(color: Color.fromARGB(255, 144, 142, 140)),
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
    const SizedBox(height: 30),
    SizedBox(
    width: double.infinity,
    height: 48,
    child: ElevatedButton(
    onPressed: _signUpWithEmail,
    style: ElevatedButton.styleFrom(
    backgroundColor: Color(0xFFDFC25A),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8),
    ),
    ),
    child: const Text(
    'Signup with Email',
      style: TextStyle(
        color: Color(0xFFFAFAF9),
        fontSize: 16,
      ),
    ),
    ),
    ),
      const SizedBox(height: 20),
      const Text(
        'By signing up, you agree to our Terms of use and Privacy Policy.',
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

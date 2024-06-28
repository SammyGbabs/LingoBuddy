import 'package:flutter/material.dart';
import 'package:screens/screens/FindTutor.dart';

class LanguageSelectionPage extends StatelessWidget {
  final List<Map<String, String>> languages = [
    {
      "name": "Learn French",
      "description": "French language tutors",
      "image": "images/picturepro.png"
    },
    {
      "name": "Learn Spanish",
      "description": "Spanish language tutors",
      "image": "images/picturepro.png"
    },
    {
      "name": "Learn Chinese",
      "description": "Chinese language tutors",
      "image": "images/picturepro.png"
    },
    {
      "name": "Learn German",
      "description": "German language tutors",
      "image": "images/picturepro.png"
    },
    {
      "name": "Learn Japanese",
      "description": "Japanese language tutors",
      "image": "images/picturepro.png"
    },
    {
      "name": "Learn Italian",
      "description": "Italyian language tutors",
      "image": "images/picturepro.png"
    },
    {
      "name": "Learn Russian",
      "description": "Russian language tutors",
      "image": "images/picturepro.png"
    },
    {
      "name": "Learn Portuguese",
      "description": "Portuguese language tutors",
      "image": "images/picturepro.png"
    },
    {
      "name": "Learn Korean",
      "description": "Korean language tutors",
      "image": "images/picturepro.png"
    },
    {
      "name": "Learn English",
      "description": "English language tutors",
      "image": "images/picturepro.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.black),
          onPressed: () {
            // Close action
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'What would you like to learn?',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 16),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: languages.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: const Color(0xFFF7FAFA), // Card color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: const BorderSide(
                          color: Color(0xFFD4DBE8), width: 1), // Border color
                    ),
                    elevation: 0, // Remove shadow
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            languages[index]['image']!,
                            height: 40,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            languages[index]['name']!,
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            languages[index]['description']!,
                            style: const TextStyle(
                              color:
                                  Color(0xFF405473), // Description text color
                              fontSize: 14,
                              fontFamily:
                                  'Work Sans', // Description font family
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => FindTutorPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF5C754), // Button color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

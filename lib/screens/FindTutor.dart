import 'package:flutter/material.dart';
import 'package:screens/screens/TeacherProfilePage.dart';

class FindTutorPage extends StatefulWidget {
  @override
  _FindTutorPageState createState() => _FindTutorPageState();
}

class _FindTutorPageState extends State<FindTutorPage> {
  final List<Map<String, String>> popularLanguages = [
    {"name": "Spanish", "image": "images/picturepro.png"},
    {"name": "French", "image": "images/picturepro.png"},
    {"name": "German", "image": "images/picturepro.png"},
  ];

  final List<Map<String, String>> tutors = [
    {
      "name": "Luisa",
      "age": "23",
      "languages": "Speaks Spanish, English, German",
      "image": "images/picturepro.png"
    },
    {
      "name": "Sofia",
      "age": "24",
      "languages": "Speaks Spanish, English, Italian",
      "image": "images/picturepro.png"
    },
    {
      "name": "Diego",
      "age": "25",
      "languages": "Speaks Spanish, English, French, Portuguese",
      "image": "images/picturepro.png"
    },
    {
      "name": "Greta",
      "age": "26",
      "languages": "Speaks Spanish, English, German",
      "image": "images/picturepro.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7FAFA),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF7FAFA),
        elevation: 0,
        title: const Center(
          child: Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Text(
              'Find a tutor',
              style: TextStyle(
                color: Color(0xFF141C24),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.expand_more, color: Color(0xFF141C24)),
            onPressed: () {
              // Expand action
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFFE3E8F2),
                  prefixIcon:
                      const Icon(Icons.search, color: Color(0xFF141C24)),
                  hintText: 'Search tutors',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Chip(
                        label: Text('All languages'),
                        backgroundColor: Color(0xFFE3E8F2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Chip(
                        label: Text('Spanish'),
                        backgroundColor: Color(0xFFE3E8F2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Chip(
                        label: Text('French'),
                        backgroundColor: Color(0xFFE3E8F2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Chip(
                        label: Text('German'),
                        backgroundColor: Color(0xFFE3E8F2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Popular languages',
                style: TextStyle(
                  color: Color(0xFF141C24),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 8),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: popularLanguages.map((language) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                              language['image']!,
                              height: 160,
                              width: 160,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.only(right: 90.0),
                            child: Text(
                              language['name']!,
                              style: const TextStyle(
                                color: Color(0xFF141C24),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Tutors available now',
                style: TextStyle(
                  color: Color(0xFF141C24),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 8),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: tutors.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Row(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            tutors[index]['image']!,
                            height: 56,
                            width: 56,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${tutors[index]['name']}, ${tutors[index]['age']}',
                                style: const TextStyle(
                                  color: Color(0xFF141C24),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                tutors[index]['languages']!,
                                style: const TextStyle(
                                  color: Color(0xFF405473),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TeacherProfilePage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFE3E8F2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: const Text(
                            'View profile',
                            style: TextStyle(
                              color: Color(0xFF141C24),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

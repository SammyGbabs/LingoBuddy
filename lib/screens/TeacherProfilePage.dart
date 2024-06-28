import 'package:flutter/material.dart';

class TeacherProfilePage extends StatefulWidget {
  @override
  _TeacherProfilePageState createState() => _TeacherProfilePageState();
}

class _TeacherProfilePageState extends State<TeacherProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7FAFA),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF7FAFA),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Teacher Profile',
          style: TextStyle(
            color: Color(0xFF141C24),
            fontWeight: FontWeight.bold,
            fontSize: 22,
            fontFamily: 'Manrope',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'images/profilepic.png',
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Luisa',
                style: TextStyle(
                  color: Color(0xFF141C24),
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  fontFamily: 'Manrope',
                ),
              ),
              const Text(
                'Spanish tutor',
                style: TextStyle(
                  color: Color(0xFF405473),
                  fontSize: 16,
                  fontFamily: 'Manrope',
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: const Color(0xFFE3E8F2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                    ),
                    child: const Text(
                      'Live Chat',
                      style: TextStyle(
                          color: Color(0xFF141C24),
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: const Color(0xFFF5C754),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                    ),
                    child: const Text(
                      'Submit Review',
                      style: TextStyle(
                          color: Color(0xFF141C24),
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '4.9',
                    style: TextStyle(
                      color: Color(0xFF141C24),
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      fontFamily: 'Manrope',
                    ),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: List.generate(5, (index) {
                          return const Icon(
                            Icons.star,
                            color: Colors.amber,
                          );
                        }),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        '120 reviews',
                        style: TextStyle(
                          color: Color(0xFF405473),
                          fontFamily: 'Manrope',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          '5',
                          style: TextStyle(
                            color: Color(0xFF141C24),
                            fontFamily: 'Manrope',
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: LinearProgressIndicator(
                          value: 0.7,
                          backgroundColor: Color(0xFFD4DBE8),
                          color: Color(0xFFF5C754),
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        '70%',
                        style: TextStyle(
                          color: Color(0xFF405473),
                          fontFamily: 'Manrope',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          '4',
                          style: TextStyle(
                            color: Color(0xFF141C24),
                            fontFamily: 'Manrope',
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: LinearProgressIndicator(
                          value: 0.2,
                          backgroundColor: Color(0xFFD4DBE8),
                          color: Color(0xFFF5C754),
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        '20%',
                        style: TextStyle(
                          color: Color(0xFF405473),
                          fontFamily: 'Manrope',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          '3',
                          style: TextStyle(
                            color: Color(0xFF141C24),
                            fontFamily: 'Manrope',
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: LinearProgressIndicator(
                          value: 0.05,
                          backgroundColor: Color(0xFFD4DBE8),
                          color: Color(0xFFF5C754),
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        '5%',
                        style: TextStyle(
                          color: Color(0xFF405473),
                          fontFamily: 'Manrope',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          '2',
                          style: TextStyle(
                            color: Color(0xFF141C24),
                            fontFamily: 'Manrope',
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: LinearProgressIndicator(
                          value: 0.03,
                          backgroundColor: Color(0xFFD4DBE8),
                          color: Color(0xFFF5C754),
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        '3%',
                        style: TextStyle(
                          color: Color(0xFF405473),
                          fontFamily: 'Manrope',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          '1',
                          style: TextStyle(
                            color: Color(0xFF141C24),
                            fontFamily: 'Manrope',
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: LinearProgressIndicator(
                          value: 0.02,
                          backgroundColor: Color(0xFFD4DBE8),
                          color: Color(0xFFF5C754),
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        '2%',
                        style: TextStyle(
                          color: Color(0xFF405473),
                          fontFamily: 'Manrope',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Reviews',
                  style: TextStyle(
                    color: Color(0xFF141C24),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'Manrope',
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Column(
                children: [
                  ListTile(
                    leading: ClipOval(
                      child: Image.asset(
                        'images/picturepro.png',
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: const Text(
                      'Evelyn',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                      ),
                    ),
                    subtitle: const Text(
                      'Dec 2022',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                      ),
                    ),
                    trailing: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.thumb_up,
                          color: Color(0xFF405473),
                        ),
                        SizedBox(width: 4),
                        Text('12'),
                        SizedBox(width: 16),
                        Icon(
                          Icons.thumb_down,
                          color: Color(0xFF405473),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: List.generate(5, (index) {
                            return const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 20,
                            );
                          }),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Mia is a great teacher. She\'s very patient and makes learning French fun.',
                          style: TextStyle(
                            color: Color(0xFF141C24),
                            fontFamily: 'Manrope',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(color: Color(0xFFD4DBE8)),
                  ListTile(
                    leading: ClipOval(
                      child: Image.asset(
                        'images/picturepro.png',
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: const Text(
                      'Riley',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                      ),
                    ),
                    subtitle: const Text(
                      'Jan 2023',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                      ),
                    ),
                    trailing: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.thumb_up,
                          color: Color(0xFF405473),
                        ),
                        SizedBox(width: 4),
                        Text('8'),
                        SizedBox(width: 16),
                        Icon(
                          Icons.thumb_down,
                          color: Color(0xFF405473),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: List.generate(5, (index) {
                            return const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 20,
                            );
                          }),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'I\'ve been taking French lessons for 6 months and I\'m so happy with my progress.',
                          style: TextStyle(
                            color: Color(0xFF141C24),
                            fontFamily: 'Manrope',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(color: Color(0xFFD4DBE8)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

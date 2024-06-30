// import 'package:flutter/material.dart';

// class LandingPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFF7FAFA),
//       body: Stack(
//         children: [
//           Positioned.fill(
//             child: Image.asset(
//               'images/landingpic.png',
//               fit: BoxFit.cover,
//             ),
//           ),
//           Positioned.fill(
//             child: Container(
//                 // color: Colors.black
//                 //     .withOpacity(0.5), // Optional overlay for readability

//                 ),
//           ),
//           const Positioned(
//             top: 200, // Increase the height of the image section
//             left: 16,
//             right: 16,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   'Get to know a language, not just the words',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 24,
//                   ),
//                 ),
//                 SizedBox(height: 8),
//                 Text(
//                   'Language is about more than just vocabulary. It\'s about understanding culture and context.',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 16,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Positioned.fill(
//             top: 400, // Adjust this value to move the scrollable content down
//             child: SingleChildScrollView(
//               child: Container(
//                 padding: const EdgeInsets.all(16.0),
//                 color: const Color(
//                     0xFFF7FAFA), // Match background color for seamless scroll
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text(
//                       'Learn with real people',
//                       style: TextStyle(
//                         color: Color(0xFF141C24),
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18,
//                       ),
//                     ),
//                     const SizedBox(height: 8),
//                     Row(
//                       children: [
//                         const Expanded(
//                           child: Text(
//                             'Practice speaking a new language with conversation partners. Chat one-on-one with a native speaker.',
//                             style: TextStyle(
//                               color: Color(0xFF405473),
//                               fontSize: 14,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(width: 8),
//                         Image.asset(
//                           'images/picturepro.png',
//                           height: 100,
//                           width: 100,
//                           fit: BoxFit.cover,
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 16),
//                     const Text(
//                       'Translation tools',
//                       style: TextStyle(
//                         color: Color(0xFF141C24),
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18,
//                       ),
//                     ),
//                     const SizedBox(height: 8),
//                     Row(
//                       children: [
//                         const Expanded(
//                           child: Text(
//                             'Translate text in real-time with your camera. Point your camera at a sign or menu and see the translation.',
//                             style: TextStyle(
//                               color: Color(0xFF405473),
//                               fontSize: 14,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(width: 8),
//                         Image.asset(
//                           'images/picturepro.png',
//                           height: 100,
//                           width: 100,
//                           fit: BoxFit.cover,
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 16),
//                     const Text(
//                       'Instantly Tools',
//                       style: TextStyle(
//                         color: Color(0xFF141C24),
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18,
//                       ),
//                     ),
//                     const SizedBox(height: 8),
//                     Row(
//                       children: [
//                         const Expanded(
//                           child: Text(
//                             'Instantly translate speech. In a foreign country? Listen to someone speak and see the translation.',
//                             style: TextStyle(
//                               color: Color(0xFF405473),
//                               fontSize: 14,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(width: 8),
//                         Image.asset(
//                           'images/picturepro.png',
//                           height: 100,
//                           width: 100,
//                           fit: BoxFit.cover,
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 16),
//                     const Text(
//                       'Improve your pronunciation',
//                       style: TextStyle(
//                         color: Color(0xFF141C24),
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18,
//                       ),
//                     ),
//                     const SizedBox(height: 8),
//                     Row(
//                       children: [
//                         const Expanded(
//                           child: Text(
//                             'Practice speaking and get instant feedback. Our AI will help you pronounce words correctly.',
//                             style: TextStyle(
//                               color: Color(0xFF405473),
//                               fontSize: 14,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(width: 8),
//                         Image.asset(
//                           'images/picturepro.png',
//                           height: 100,
//                           width: 100,
//                           fit: BoxFit.cover,
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:screens/screens/Home.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7FAFA),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'images/landingpic.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
                // color: Colors.black
                //     .withOpacity(0.5), // Optional overlay for readability
                ),
          ),
          const Positioned(
            top: 200, // Increase the height of the image section
            left: 16,
            right: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Get to know a language, not just the words',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Language is about more than just vocabulary. It\'s about understanding culture and context.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Positioned.fill(
            top: 400, // Adjust this value to move the scrollable content down
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                color: const Color(
                    0xFFF7FAFA), // Match background color for seamless scroll
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Learn with real people',
                      style: TextStyle(
                        color: Color(0xFF141C24),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Expanded(
                          child: Text(
                            'Practice speaking a new language with conversation partners. Chat one-on-one with a native speaker.',
                            style: TextStyle(
                              color: Color(0xFF405473),
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Image.asset(
                          'images/picturepro.png',
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Translation tools',
                      style: TextStyle(
                        color: Color(0xFF141C24),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Expanded(
                          child: Text(
                            'Translate text in real-time with your camera. Point your camera at a sign or menu and see the translation.',
                            style: TextStyle(
                              color: Color(0xFF405473),
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Image.asset(
                          'images/picturepro.png',
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Instantly Tools',
                      style: TextStyle(
                        color: Color(0xFF141C24),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Expanded(
                          child: Text(
                            'Instantly translate speech. In a foreign country? Listen to someone speak and see the translation.',
                            style: TextStyle(
                              color: Color(0xFF405473),
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Image.asset(
                          'images/picturepro.png',
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Improve your pronunciation',
                      style: TextStyle(
                        color: Color(0xFF141C24),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Expanded(
                          child: Text(
                            'Practice speaking and get instant feedback. Our AI will help you pronounce words correctly.',
                            style: TextStyle(
                              color: Color(0xFF405473),
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Image.asset(
                          'images/picturepro.png',
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),
                    Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xFFF5C754),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                        ),
                        child: const Text(
                          'Next',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

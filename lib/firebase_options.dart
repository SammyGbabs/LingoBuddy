// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDX2t_TJuSoxwLxS4Bvzi_Fu1THyCW3bNA',
    appId: '1:543502139795:web:92df294ad7e03732cbe866',
    messagingSenderId: '543502139795',
    projectId: 'lingobuddy-cf3fc',
    authDomain: 'lingobuddy-cf3fc.firebaseapp.com',
    storageBucket: 'lingobuddy-cf3fc.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAN3w6qw-ZuxhTfuvIVvPeUjsJD9Nb1Ph8',
    appId: '1:543502139795:android:4077eba8b3ea9a4fcbe866',
    messagingSenderId: '543502139795',
    projectId: 'lingobuddy-cf3fc',
    storageBucket: 'lingobuddy-cf3fc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB8di181d6z3b3MlI8-yygQgKeNnkGjG0c',
    appId: '1:543502139795:ios:e041716c4f662b96cbe866',
    messagingSenderId: '543502139795',
    projectId: 'lingobuddy-cf3fc',
    storageBucket: 'lingobuddy-cf3fc.appspot.com',
    iosBundleId: 'com.example.screens',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB8di181d6z3b3MlI8-yygQgKeNnkGjG0c',
    appId: '1:543502139795:ios:e041716c4f662b96cbe866',
    messagingSenderId: '543502139795',
    projectId: 'lingobuddy-cf3fc',
    storageBucket: 'lingobuddy-cf3fc.appspot.com',
    iosBundleId: 'com.example.screens',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDX2t_TJuSoxwLxS4Bvzi_Fu1THyCW3bNA',
    appId: '1:543502139795:web:f1c793d36d270bc6cbe866',
    messagingSenderId: '543502139795',
    projectId: 'lingobuddy-cf3fc',
    authDomain: 'lingobuddy-cf3fc.firebaseapp.com',
    storageBucket: 'lingobuddy-cf3fc.appspot.com',
  );
}
// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDKY_SPJ8m5HCoMFQRrXk-nKl8pL6Gk2M8',
    appId: '1:599704108148:web:aef0c95a012d276f922521',
    messagingSenderId: '599704108148',
    projectId: 'auth-84f3d',
    authDomain: 'auth-84f3d.firebaseapp.com',
    storageBucket: 'auth-84f3d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD6ng3moefmbLvAAAADOcl1td-vrJVyPl8',
    appId: '1:599704108148:android:8464d30f57d3b10b922521',
    messagingSenderId: '599704108148',
    projectId: 'auth-84f3d',
    storageBucket: 'auth-84f3d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBlXB1gsW949cSfowBB0p32jEe98CgIbfM',
    appId: '1:599704108148:ios:7d576a8969c52bec922521',
    messagingSenderId: '599704108148',
    projectId: 'auth-84f3d',
    storageBucket: 'auth-84f3d.appspot.com',
    iosBundleId: 'com.nangahamandine.auth',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBlXB1gsW949cSfowBB0p32jEe98CgIbfM',
    appId: '1:599704108148:ios:7d576a8969c52bec922521',
    messagingSenderId: '599704108148',
    projectId: 'auth-84f3d',
    storageBucket: 'auth-84f3d.appspot.com',
    iosBundleId: 'com.nangahamandine.auth',
  );
}

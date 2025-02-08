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
    apiKey: 'AIzaSyA0Lr8PUcPOHYF3my0MUqYfCzx3bJ09zLY',
    appId: '1:1016807347125:web:314a1ca7685dc49bb0bffc',
    messagingSenderId: '1016807347125',
    projectId: 'vertexaiapp-636ab',
    authDomain: 'vertexaiapp-636ab.firebaseapp.com',
    storageBucket: 'vertexaiapp-636ab.firebasestorage.app',
    measurementId: 'G-PK6Q54Y3YG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAzuUri1EkdSVqXPSx3s_BGGlZEMgDnIB8',
    appId: '1:1016807347125:android:29e98db395adfd40b0bffc',
    messagingSenderId: '1016807347125',
    projectId: 'vertexaiapp-636ab',
    storageBucket: 'vertexaiapp-636ab.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD8QYThefVejkzOw5jq8SqbxpVSXdv9phY',
    appId: '1:1016807347125:ios:90addcfbb3b3948bb0bffc',
    messagingSenderId: '1016807347125',
    projectId: 'vertexaiapp-636ab',
    storageBucket: 'vertexaiapp-636ab.firebasestorage.app',
    iosBundleId: 'com.example.vertexAiIntegration',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD8QYThefVejkzOw5jq8SqbxpVSXdv9phY',
    appId: '1:1016807347125:ios:90addcfbb3b3948bb0bffc',
    messagingSenderId: '1016807347125',
    projectId: 'vertexaiapp-636ab',
    storageBucket: 'vertexaiapp-636ab.firebasestorage.app',
    iosBundleId: 'com.example.vertexAiIntegration',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA0Lr8PUcPOHYF3my0MUqYfCzx3bJ09zLY',
    appId: '1:1016807347125:web:75f4f9b52494df8bb0bffc',
    messagingSenderId: '1016807347125',
    projectId: 'vertexaiapp-636ab',
    authDomain: 'vertexaiapp-636ab.firebaseapp.com',
    storageBucket: 'vertexaiapp-636ab.firebasestorage.app',
    measurementId: 'G-FGPPNTN3J9',
  );
}

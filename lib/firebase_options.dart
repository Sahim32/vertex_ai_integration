import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;
import 'package:flutter_dotenv/flutter_dotenv.dart';

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

  static FirebaseOptions get web => FirebaseOptions(
    apiKey: dotenv.env['API_KEY']!,
    appId: dotenv.env['APP_ID']!,
    messagingSenderId: dotenv.env['MESSAGING_SENDER_ID']!,
    projectId: dotenv.env['PROJECT_ID']!,
    authDomain: dotenv.env['AUTH_DOMAIN']!,
    storageBucket: dotenv.env['STORAGE_BUCKET']!,
    measurementId: dotenv.env['MEASUREMENT_ID']!,
  );

  static FirebaseOptions get android => FirebaseOptions(
    apiKey: dotenv.env['API_KEY']!,
    appId: dotenv.env['APP_ID']!,
    messagingSenderId: dotenv.env['MESSAGING_SENDER_ID']!,
    projectId: dotenv.env['PROJECT_ID']!,
    storageBucket: dotenv.env['STORAGE_BUCKET']!,
  );

  static FirebaseOptions get ios => FirebaseOptions(
    apiKey: dotenv.env['API_KEY']!,
    appId: dotenv.env['APP_ID']!,
    messagingSenderId: dotenv.env['MESSAGING_SENDER_ID']!,
    projectId: dotenv.env['PROJECT_ID']!,
    storageBucket: dotenv.env['STORAGE_BUCKET']!,
    iosBundleId: 'com.example.vertexAiIntegration',
  );

  static FirebaseOptions get macos => FirebaseOptions(
    apiKey: dotenv.env['API_KEY']!,
    appId: dotenv.env['APP_ID']!,
    messagingSenderId: dotenv.env['MESSAGING_SENDER_ID']!,
    projectId: dotenv.env['PROJECT_ID']!,
    storageBucket: dotenv.env['STORAGE_BUCKET']!,
    iosBundleId: 'com.example.vertexAiIntegration',
  );

  static FirebaseOptions get windows => FirebaseOptions(
    apiKey: dotenv.env['API_KEY']!,
    appId: dotenv.env['APP_ID']!,
    messagingSenderId: dotenv.env['MESSAGING_SENDER_ID']!,
    projectId: dotenv.env['PROJECT_ID']!,
    authDomain: dotenv.env['AUTH_DOMAIN']!,
    storageBucket: dotenv.env['STORAGE_BUCKET']!,
    measurementId: dotenv.env['MEASUREMENT_ID']!,
  );
}
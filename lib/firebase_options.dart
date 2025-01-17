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
    apiKey: 'AIzaSyB58KI894d7ZBoc0GJ4deyF2WVsdiH_FIk',
    appId: '1:1001335563704:web:c3309943078bfcaa225b4d',
    messagingSenderId: '1001335563704',
    projectId: 'navigo-37916',
    authDomain: 'navigo-37916.firebaseapp.com',
    storageBucket: 'navigo-37916.firebasestorage.app',
    measurementId: 'G-ZCR7V3MZS3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAGu0Y95pPHdz0E6eBsbc2xHSsihE26D9s',
    appId: '1:1001335563704:android:e9fb0a00c07364b8225b4d',
    messagingSenderId: '1001335563704',
    projectId: 'navigo-37916',
    storageBucket: 'navigo-37916.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAQ1OxBiq9gafghOFY-u-Zs0pSDXaNynOI',
    appId: '1:1001335563704:ios:1487a12b4dd3280d225b4d',
    messagingSenderId: '1001335563704',
    projectId: 'navigo-37916',
    storageBucket: 'navigo-37916.firebasestorage.app',
    iosClientId: '1001335563704-13lljmqa0pkrs86gk3840ef2qel487qc.apps.googleusercontent.com',
    iosBundleId: 'com.example.naviGo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAQ1OxBiq9gafghOFY-u-Zs0pSDXaNynOI',
    appId: '1:1001335563704:ios:1487a12b4dd3280d225b4d',
    messagingSenderId: '1001335563704',
    projectId: 'navigo-37916',
    storageBucket: 'navigo-37916.firebasestorage.app',
    iosClientId: '1001335563704-13lljmqa0pkrs86gk3840ef2qel487qc.apps.googleusercontent.com',
    iosBundleId: 'com.example.naviGo',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyB58KI894d7ZBoc0GJ4deyF2WVsdiH_FIk',
    appId: '1:1001335563704:web:e16aebba132e25f5225b4d',
    messagingSenderId: '1001335563704',
    projectId: 'navigo-37916',
    authDomain: 'navigo-37916.firebaseapp.com',
    storageBucket: 'navigo-37916.firebasestorage.app',
    measurementId: 'G-YQTD4EBB34',
  );

}
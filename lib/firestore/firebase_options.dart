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
    apiKey: 'AIzaSyBjKheOXCSJs369hUPOmLt5mX86d1SI3IM',
    appId: '1:284141252527:web:b189fcb534fb9baa1f495a',
    messagingSenderId: '284141252527',
    projectId: 'ammasevasadanam-app-27770',
    authDomain: 'ammasevasadanam-app-27770.firebaseapp.com',
    storageBucket: 'ammasevasadanam-app-27770.appspot.com',
    measurementId: 'G-7CNE3BX0XH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB9nI6-AFs41oo6B-VhjqfSvtBdEVMdM4I',
    appId: '1:284141252527:android:356579a859072c2c1f495a',
    messagingSenderId: '284141252527',
    projectId: 'ammasevasadanam-app-27770',
    storageBucket: 'ammasevasadanam-app-27770.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAoHYd58JkWIKY7RkK3k1oIL8d0a1XFg_s',
    appId: '1:284141252527:ios:82e77990992f276c1f495a',
    messagingSenderId: '284141252527',
    projectId: 'ammasevasadanam-app-27770',
    storageBucket: 'ammasevasadanam-app-27770.appspot.com',
    iosBundleId: 'com.example.ammasevasadanamApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAoHYd58JkWIKY7RkK3k1oIL8d0a1XFg_s',
    appId: '1:284141252527:ios:82e77990992f276c1f495a',
    messagingSenderId: '284141252527',
    projectId: 'ammasevasadanam-app-27770',
    storageBucket: 'ammasevasadanam-app-27770.appspot.com',
    iosBundleId: 'com.example.ammasevasadanamApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBjKheOXCSJs369hUPOmLt5mX86d1SI3IM',
    appId: '1:284141252527:web:4abcb4cf22b9bcea1f495a',
    messagingSenderId: '284141252527',
    projectId: 'ammasevasadanam-app-27770',
    authDomain: 'ammasevasadanam-app-27770.firebaseapp.com',
    storageBucket: 'ammasevasadanam-app-27770.appspot.com',
    measurementId: 'G-MRG0SFDDRX',
  );
}

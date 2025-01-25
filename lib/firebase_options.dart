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
    apiKey: 'AIzaSyCmnyoZMsKp_paMhmhX6cVXdNyr38BGZXM',
    appId: '1:1039419001903:web:3b13416a205572fda30ada',
    messagingSenderId: '1039419001903',
    projectId: 'upqayt-41493',
    authDomain: 'upqayt-41493.firebaseapp.com',
    storageBucket: 'upqayt-41493.firebasestorage.app',
    measurementId: 'G-BH4B7CK96Z',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDoEg1C2Yoqt5bH3LzDtJILQyvcYcEvN70',
    appId: '1:1039419001903:android:5742f99c0d4a78d5a30ada',
    messagingSenderId: '1039419001903',
    projectId: 'upqayt-41493',
    storageBucket: 'upqayt-41493.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBU94XNZb6eJSPaqthe5INCX3DW7yaI7xU',
    appId: '1:1039419001903:ios:9637c5fc8a7b18b8a30ada',
    messagingSenderId: '1039419001903',
    projectId: 'upqayt-41493',
    storageBucket: 'upqayt-41493.firebasestorage.app',
    iosBundleId: 'uz.appxtechgroup.presidentftinc.flutter.upqayt',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBU94XNZb6eJSPaqthe5INCX3DW7yaI7xU',
    appId: '1:1039419001903:ios:9637c5fc8a7b18b8a30ada',
    messagingSenderId: '1039419001903',
    projectId: 'upqayt-41493',
    storageBucket: 'upqayt-41493.firebasestorage.app',
    iosBundleId: 'uz.appxtechgroup.presidentftinc.flutter.upqayt',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCmnyoZMsKp_paMhmhX6cVXdNyr38BGZXM',
    appId: '1:1039419001903:web:bd8e8e02ba634c2fa30ada',
    messagingSenderId: '1039419001903',
    projectId: 'upqayt-41493',
    authDomain: 'upqayt-41493.firebaseapp.com',
    storageBucket: 'upqayt-41493.firebasestorage.app',
    measurementId: 'G-Z94PSGY0F1',
  );

}
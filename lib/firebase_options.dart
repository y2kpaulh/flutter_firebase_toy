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
    apiKey: 'AIzaSyD8c3qfpCbg98YiCMl62x7DFIfV0diqmEE',
    appId: '1:811875799305:web:c145bc80cab009af5683d8',
    messagingSenderId: '811875799305',
    projectId: 'firebase-toy',
    authDomain: 'fir-toy-3786f.firebaseapp.com',
    databaseURL: 'https://firebase-toy-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'firebase-toy.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAXHC0O-LhWMr3qbrD7zUrxFirjcFWZuwU',
    appId: '1:811875799305:android:0243937db01e2ad05683d8',
    messagingSenderId: '811875799305',
    projectId: 'firebase-toy',
    databaseURL: 'https://firebase-toy-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'firebase-toy.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBG3cTLxR4jb2SszqhoOcf1KrrRH8lZaZA',
    appId: '1:811875799305:ios:6e8960726ebfdaca5683d8',
    messagingSenderId: '811875799305',
    projectId: 'firebase-toy',
    databaseURL: 'https://firebase-toy-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'firebase-toy.appspot.com',
    iosClientId: '811875799305-1kmrul4utl6p6gmuspo00ujrf5clf91h.apps.googleusercontent.com',
    iosBundleId: 'com.echadworks.firebaseToy',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBG3cTLxR4jb2SszqhoOcf1KrrRH8lZaZA',
    appId: '1:811875799305:ios:6e8960726ebfdaca5683d8',
    messagingSenderId: '811875799305',
    projectId: 'firebase-toy',
    databaseURL: 'https://firebase-toy-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'firebase-toy.appspot.com',
    iosClientId: '811875799305-1kmrul4utl6p6gmuspo00ujrf5clf91h.apps.googleusercontent.com',
    iosBundleId: 'com.echadworks.firebaseToy',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD8c3qfpCbg98YiCMl62x7DFIfV0diqmEE',
    appId: '1:811875799305:web:f24faf5d3806b30d5683d8',
    messagingSenderId: '811875799305',
    projectId: 'firebase-toy',
    authDomain: 'fir-toy-3786f.firebaseapp.com',
    databaseURL: 'https://firebase-toy-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'firebase-toy.appspot.com',
  );
}

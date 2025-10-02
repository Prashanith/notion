import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
        return windows;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBmAgaJeibsNA-JsKC9Spi_p0Mq9HTY9uM',
    appId: '1:822002309377:web:899d17b53f633114c2e300',
    messagingSenderId: '822002309377',
    projectId: 'meta-notion',
    authDomain: 'meta-notion.firebaseapp.com',
    storageBucket: 'meta-notion.firebasestorage.app',
    measurementId: 'G-8GHGHSZVGF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDlXCrUwapGxndZDvlwL-42ESrA0cWiHbY',
    appId: '1:822002309377:android:b4243cd3bb0bb45bc2e300',
    messagingSenderId: '822002309377',
    projectId: 'meta-notion',
    storageBucket: 'meta-notion.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCtUBld7vwZk1ywNwm8kvjD3bLBZDFmjbM',
    appId: '1:822002309377:ios:bcb13acd03bc7371c2e300',
    messagingSenderId: '822002309377',
    projectId: 'meta-notion',
    storageBucket: 'meta-notion.firebasestorage.app',
    iosClientId:
        '822002309377-q52jkqebjvl8s1ftsn3o8jqmcfdqpdqe.apps.googleusercontent.com',
    iosBundleId: 'com.example.notion',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCtUBld7vwZk1ywNwm8kvjD3bLBZDFmjbM',
    appId: '1:822002309377:ios:bcb13acd03bc7371c2e300',
    messagingSenderId: '822002309377',
    projectId: 'meta-notion',
    storageBucket: 'meta-notion.firebasestorage.app',
    iosClientId:
        '822002309377-q52jkqebjvl8s1ftsn3o8jqmcfdqpdqe.apps.googleusercontent.com',
    iosBundleId: 'com.example.notion',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBmAgaJeibsNA-JsKC9Spi_p0Mq9HTY9uM',
    appId: '1:822002309377:web:4b5d5e74b82b63a5c2e300',
    messagingSenderId: '822002309377',
    projectId: 'meta-notion',
    authDomain: 'meta-notion.firebaseapp.com',
    storageBucket: 'meta-notion.firebasestorage.app',
    measurementId: 'G-N0KYFMDFGZ',
  );
}

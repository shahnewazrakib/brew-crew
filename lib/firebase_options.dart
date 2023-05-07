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
    apiKey: 'AIzaSyAlDEiKpskS1VBcyZiAag8nhe0RhbBHufs',
    appId: '1:1015187687304:web:59d523594bb8d581841c3d',
    messagingSenderId: '1015187687304',
    projectId: 'brew-crew01',
    authDomain: 'brew-crew01.firebaseapp.com',
    storageBucket: 'brew-crew01.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBDfaQYcAlH6D5bdEYdYrkQR9iLcNd9E7U',
    appId: '1:1015187687304:android:3276e18c9280d735841c3d',
    messagingSenderId: '1015187687304',
    projectId: 'brew-crew01',
    storageBucket: 'brew-crew01.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCwN5dnNSF0MPThXbTN0ee4Au1Wf0-kzAk',
    appId: '1:1015187687304:ios:bdcd3b39da5938da841c3d',
    messagingSenderId: '1015187687304',
    projectId: 'brew-crew01',
    storageBucket: 'brew-crew01.appspot.com',
    iosClientId: '1015187687304-9alah333f21gicioa3rf1ibcpb0rq5f0.apps.googleusercontent.com',
    iosBundleId: 'com.example.brewCrew',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCwN5dnNSF0MPThXbTN0ee4Au1Wf0-kzAk',
    appId: '1:1015187687304:ios:bdcd3b39da5938da841c3d',
    messagingSenderId: '1015187687304',
    projectId: 'brew-crew01',
    storageBucket: 'brew-crew01.appspot.com',
    iosClientId: '1015187687304-9alah333f21gicioa3rf1ibcpb0rq5f0.apps.googleusercontent.com',
    iosBundleId: 'com.example.brewCrew',
  );
}

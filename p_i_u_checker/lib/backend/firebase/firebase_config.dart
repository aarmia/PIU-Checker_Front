import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBCsx6QuP9pB9hxCCw2RFjJUGofMs32mko",
            authDomain: "piu-checker.firebaseapp.com",
            projectId: "piu-checker",
            storageBucket: "piu-checker.firebasestorage.app",
            messagingSenderId: "429018560008",
            appId: "1:429018560008:web:192bab041d1baee1bac3bd",
            measurementId: "G-FFRJ0790FR"));
  } else {
    await Firebase.initializeApp();
  }
}

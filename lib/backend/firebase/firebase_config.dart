import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCwz0LBlXLDCK2zJhtmIK-9BD1YDFSKlus",
            authDomain: "wallet-with-flutterflow.firebaseapp.com",
            projectId: "wallet-with-flutterflow",
            storageBucket: "wallet-with-flutterflow.appspot.com",
            messagingSenderId: "162045596678",
            appId: "1:162045596678:web:671e10aedd8114f0f3df87",
            measurementId: "G-KX8PMKRNZX"));
  } else {
    await Firebase.initializeApp();
  }
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAdC0FstBnr8PWNzks58AL_-ds6cqEesb4",
            authDomain: "projetosflutterflow7.firebaseapp.com",
            projectId: "projetosflutterflow7",
            storageBucket: "projetosflutterflow7.appspot.com",
            messagingSenderId: "50227155074",
            appId: "1:50227155074:web:dd4a8f3eaeba5372f6649b",
            measurementId: "G-5728HR5DXE"));
  } else {
    await Firebase.initializeApp();
  }
}

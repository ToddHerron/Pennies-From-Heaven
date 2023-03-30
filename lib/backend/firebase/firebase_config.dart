import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDizaep1HrKD3E5pyJfU1pcx4WmcbjJZFc",
            authDomain: "pennies-from-heaven.firebaseapp.com",
            projectId: "pennies-from-heaven",
            storageBucket: "pennies-from-heaven.appspot.com",
            messagingSenderId: "1002814025305",
            appId: "1:1002814025305:web:beb126e01059bbbd72cb48",
            measurementId: "G-BXVJPZ15Q8"));
  } else {
    await Firebase.initializeApp();
  }
}

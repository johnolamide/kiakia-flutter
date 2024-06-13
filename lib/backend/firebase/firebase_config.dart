import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAFN4dyHcmkMmneOYotxxHOkMjTT1Udlgs",
            authDomain: "kia-kia-rgnp9h.firebaseapp.com",
            projectId: "kia-kia-rgnp9h",
            storageBucket: "kia-kia-rgnp9h.appspot.com",
            messagingSenderId: "345365972947",
            appId: "1:345365972947:web:226981470392ae2c4e5126"));
  } else {
    await Firebase.initializeApp();
  }
}

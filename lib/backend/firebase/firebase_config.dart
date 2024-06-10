import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
      if (kIsWeb) {
      await Firebase.initializeApp(options: FirebaseOptions(
    apiKey: "AIzaSyB0DPGGsoP60VkxV2ivxQYBSpphOp6XsxY",
      authDomain: "ikam-multitiendas.firebaseapp.com",
      projectId: "ikam-multitiendas",
      storageBucket: "ikam-multitiendas.appspot.com",
      messagingSenderId: "877233063554",
      appId: "1:877233063554:web:fe9358b0328f04eecf969b",
      measurementId: "G-PFFZZ9HZER"
    ));
    } else {
      await Firebase.initializeApp();
    }
  
}

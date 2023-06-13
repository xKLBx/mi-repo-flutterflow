import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCVTwCAUvxTKydsDe4XCS_Np04F-GpClo0",
            authDomain: "azakmedv2-40e38.firebaseapp.com",
            projectId: "azakmedv2-40e38",
            storageBucket: "azakmedv2-40e38.appspot.com",
            messagingSenderId: "618995953699",
            appId: "1:618995953699:web:88f7cdf52cf5b70308c196"));
  } else {
    await Firebase.initializeApp();
  }
}

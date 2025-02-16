import 'package:e_shopping/app.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';

Future<void> main() async {

  //Todo: Add Widgets Binding
  //Todo: Init local storage
  //Todo: Await Naitvesplash
  //Todo: Initilaze Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then(
    (FirebaseApp value) => Get.put(AuthenticationRepository())
  );

  //Todo: Initilaze Authentication

  runApp(const App());
}


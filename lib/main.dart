import 'package:e_shopping/app.dart';
import 'package:e_shopping/data/repositories/authentication_repository.dart';
import 'package:e_shopping/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future<void> main() async {

  // Widgets Binding
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // -- GetX local storage
  await GetStorage.init();
  
  // -- Await splash until other itemsload
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);


  //Todo: Initilaze Firebase & Authentication Repository
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then(
    (FirebaseApp value) => Get.put(AuthenticationRepository()),
  );



  runApp(const App());
}


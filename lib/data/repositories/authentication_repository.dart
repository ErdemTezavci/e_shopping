import 'package:e_shopping/features/authentication/screens/login/login.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instace => Get.find();

  /// Variables
  final deviceStorage = GetStorage();

  /// Called from  main.dart on app Launch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  /// Function to show relevant screen
  screenRedirect() async {
    // local storage
    if(kDebugMode) {
      print('======================= GetStorage Auth Repo =======================');
      print(deviceStorage.read('isFirstTime'));
    }
    
    deviceStorage.writeIfNull('isFirstTime', true);
    deviceStorage.read('isFirstTime') != true ? Get.offAll(() => const LoginScreen()) : Get.offAll(() => const LoginScreen());
  }

  /* ------------------------ Email & Password Sign-in  ------------------------ */

  /// [EmailAuthentication] - Sign-in
  
  /// [EmailAuthentication] - REGISTER
  
  /// [ReAuthenticate] - ReAuthenticate User
}
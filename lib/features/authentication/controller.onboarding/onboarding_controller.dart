import 'package:e_shopping/features/authentication/screens/login/login.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;
  
  /// Update Current Index when Page Scrolled
  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// Jump to the specificdot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  /// Update Current Index & jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      final storage = GetStorage();

      if(kDebugMode) {
        print('======================= GetStorage Next Button =======================');
        print(storage.read('isFirstTime'));
      }
    
      storage.write('isFirstTime', false);

      Get.offAll(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }
  
  /// Update Current Index & jump to last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
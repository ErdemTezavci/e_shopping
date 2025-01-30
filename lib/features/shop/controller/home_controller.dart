import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final CarousalCurrentIndex = 0.obs;
  
  void updatePageIndicator(index) {
    CarousalCurrentIndex.value = index;
  }
}
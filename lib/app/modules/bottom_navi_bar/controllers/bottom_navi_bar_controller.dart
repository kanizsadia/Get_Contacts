import 'package:get/get.dart';

class BottomNaviBarController extends GetxController {
  //TODO: Implement BottomNaviBarController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}

import 'package:get/get.dart';

import '../controllers/bottom_navi_bar_controller.dart';

class BottomNaviBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNaviBarController>(
      () => BottomNaviBarController(),
    );
  }
}
 
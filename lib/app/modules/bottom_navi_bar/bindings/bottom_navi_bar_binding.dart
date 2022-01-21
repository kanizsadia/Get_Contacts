import 'package:get/get.dart';

import 'package:flutter_application_6/app/modules/bottom_navi_bar/controllers/contact_controller.dart';

import '../controllers/bottom_navi_bar_controller.dart';

class BottomNaviBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ContactController>(
      () => ContactController(),
    );
    Get.lazyPut<BottomNaviBarController>(
      () => BottomNaviBarController(),
    );
  }
}

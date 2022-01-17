import 'package:flutter_application_6/app/modules/bottom_navi_bar/controllers/recenct_controller_controller.dart';

import 'package:get/get.dart';



class RecentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RecenctControllerController >(
      () => RecenctControllerController (),
    );
  }
}
 
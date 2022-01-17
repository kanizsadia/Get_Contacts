import 'package:flutter_application_6/app/modules/bottom_navi_bar/controllers/cantact_controller_controller.dart';

import 'package:get/get.dart';



class CantactBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CantactControllerController >(
      () => CantactControllerController (),
    );
  }
}
 
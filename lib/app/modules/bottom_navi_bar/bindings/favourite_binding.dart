
import 'package:flutter_application_6/app/modules/bottom_navi_bar/controllers/favourite_controller_controller.dart';

import 'package:get/get.dart';



class FavouriteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FavouriteControllerController >(
      () => FavouriteControllerController (),
    );
  }
}
 
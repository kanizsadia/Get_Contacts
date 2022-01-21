import 'package:flutter_application_6/app/modules/bottom_navi_bar/controllers/contact_controller.dart';
import 'package:get/get.dart';



class ContactBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ContactController >(
      () => ContactController (),
    );
  }
}
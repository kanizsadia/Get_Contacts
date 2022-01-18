import 'package:flutter/material.dart';
import 'package:flutter_application_6/app/modules/bottom_navi_bar/views/dailpad_view.dart';

import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class Floating_Button extends StatelessWidget {
  const Floating_Button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed:(){
      Get.to(Calculator());
    },
    child: Icon(Icons.dialpad)    
    );
  }
}

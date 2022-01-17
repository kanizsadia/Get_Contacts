import 'package:flutter/material.dart';
import 'package:flutter_application_6/app/modules/bottom_navi_bar/views/cantact_view.dart';
import 'package:flutter_dialpad/flutter_dialpad.dart';

import 'package:get/get.dart';

class DailpadView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(children: [
        CantactView(),
        Container(
            color: Colors.black,
            width: 400,

            child: SafeArea(
              
                child:
                DialPad(
                    enableDtmf: true,
                    outputMask: "000 000-0000",
                    backspaceButtonIconColor: Colors.red,
                    makeCall: (number){
                      print(number);
                    }
                )
            ),
          ),
        
      ],)
    );
  }
}

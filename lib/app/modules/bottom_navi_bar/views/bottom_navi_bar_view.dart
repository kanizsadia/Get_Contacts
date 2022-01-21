import 'package:flutter/material.dart';
import 'package:flutter_application_6/app/routes/widgets/floating_button.dart';
import 'package:flutter_application_6/app/routes/widgets/local_widgets.dart';
import 'package:flutter_application_6/app/modules/bottom_navi_bar/controllers/recenct_controller_controller.dart';
import 'package:flutter_application_6/app/routes/app_pages.dart';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../controllers/bottom_navi_bar_controller.dart';

class BottomNaviBarView extends GetView<RecenctControllerController> {
  
  @override
  Widget build(BuildContext context) {
 RecenctControllerController dx = Get.put(RecenctControllerController());
    return Scaffold(
      
             
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
           
            child: GetBuilder< RecenctControllerController>(
              builder: (_dx) => ListView.builder(
                shrinkWrap: false,
                addAutomaticKeepAlives: true,
                keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual ,
                  itemCount: _dx.recent.length,
                  itemBuilder: (context, index)
                   {
                    return ListTile(
                      title: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Expanded(
                                 flex: 8,
                                child: Row(
                                  children: [
                                     Container(
                        decoration: BoxDecoration(shape: BoxShape.circle,
                        color: Colors.blue,
                        
                        ),
                        child:  Icon(Icons.person,
                          color: Colors.white,
                          size: 40,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        
                             
                        
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(_dx.recent[index]["name"]),
                                        Text(_dx.recent[index]["number"].toString()),
                                        Text(_dx.recent[index]["time"]),
                                       
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              
                               Expanded(
                                 flex: 1,
                                 child: Icon(Icons.call,
                                 color: Colors.green,
                                 ),
                               )
                            ],
                          ),
                          SizedBox(height: 10,)
                        ],
                      ),
                    );
                  }),
            ),
          ),
         
          
        ],
      ),
      floatingActionButton: Floating_Button(),
       bottomNavigationBar: BottomBar(),
    );

  }
}



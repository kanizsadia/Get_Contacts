import 'package:flutter/material.dart';
import 'package:flutter_application_6/app/modules/bottom_navi_bar/controllers/recenct_controller_controller.dart';
import 'package:flutter_application_6/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../../../routes/widgets/local_widgets.dart';

class RecentView extends GetView {
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
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(_dx.recent[index]["name"]),
                                  Text(_dx.recent[index]["number"].toString()),
                                  Text(_dx.recent[index]["time"]),
                                 
                                ],
                              ),
                              SizedBox(width: 800,),
                               Icon(Icons.call,
                               color: Colors.green,
                               )
                            ],
                          ),
                          SizedBox(height: 5,)
                        ],
                      ),
                    );
                  }),
            ),
          ),
         
          
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed:(){
        Get.toNamed(Routes.DAILPAD);
      },
      child: Icon(Icons.dialpad)    
      ),
       bottomNavigationBar: BottomBar(),
    );
  }
}

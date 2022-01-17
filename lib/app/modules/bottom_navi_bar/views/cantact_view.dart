import 'package:flutter/material.dart';
import 'package:flutter_application_6/app/routes/widgets/local_widgets.dart';
import 'package:flutter_application_6/app/modules/bottom_navi_bar/controllers/cantact_controller_controller.dart';

import 'package:get/get.dart';

class CantactView extends GetView {
  @override
  Widget build(BuildContext context) {
     CantactControllerController dx = Get.put(CantactControllerController());
    return Scaffold(
      
             
      body:  Column(
        children: [
          TextFormField(
             
            decoration: InputDecoration(border:  OutlineInputBorder(borderSide: BorderSide(),
            borderRadius: BorderRadius.all(Radius.circular(4) ),
            
            
            ),),),
          Expanded(
         
            child: GetBuilder< CantactControllerController>(
              builder: (_dx) => ListView.builder(
                  itemCount: _dx.contact.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Row(
                        children: [
                          Column(
                            children: [
                              Text(_dx.contact[index]["name"]),
                              Text(_dx.contact[index]["number"].toString()),
                              
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
         
          
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed:(){},
      child: Icon(Icons.dialpad)    
      ),
       bottomNavigationBar: BottomBar(),
    );
  }
}

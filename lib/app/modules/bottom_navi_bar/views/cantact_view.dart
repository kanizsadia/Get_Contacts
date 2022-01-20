import 'package:flutter/material.dart';
import 'package:flutter_application_6/app/routes/widgets/floating_button.dart';
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
            
             
            decoration: InputDecoration(border:  OutlineInputBorder(borderSide: BorderSide(
              width: 3,
              color: Colors.blue,
            ),
            borderRadius: BorderRadius.all(Radius.circular(30) ),
            
          
            
            ),
            prefixIcon: Icon(Icons.search),
            hintText: "Search Contacts"
            
            
           
            ),
             validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  },
            onChanged: (Value){
              
            },
            
            ),
            // TextFormField(
            //         onChanged: (value) {
            //           Future.delayed(const Duration(seconds: 1), () {
            //             ;
            //           });
            //         },
            //       ),
          Expanded(
         
            child: GetBuilder< CantactControllerController>(
              builder: (_dx) => ListView.builder(
                  itemCount: _dx.contact.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Row(
                        
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Container(
                        decoration: BoxDecoration(shape: BoxShape.circle,
                        color: Colors.blue,
                        
                        ),
                        child:  Icon(Icons.person,
                          color: Colors.white,
                          size: 30,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        
                             
                        
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
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
      floatingActionButton: Floating_Button(),
       bottomNavigationBar: BottomBar(),
    );
  }
}

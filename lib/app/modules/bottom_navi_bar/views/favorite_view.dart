import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_application_6/app/modules/bottom_navi_bar/controllers/favourite_controller_controller.dart';
import 'package:flutter_application_6/app/routes/widgets/floating_button.dart';

import 'package:get/get.dart';

import '../../../routes/widgets/local_widgets.dart';

class FavoriteView extends GetView {
  @override
  Widget build(BuildContext context) {
    FavouriteControllerController dx = Get.put(FavouriteControllerController());
    return Scaffold(
      
             
      body:  Column(
mainAxisAlignment: MainAxisAlignment.start,
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
          Expanded(
         
            child: GetBuilder< FavouriteControllerController>(
              builder: (_dx) => ListView.builder(
                  itemCount: _dx.favorite.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(_dx.favorite[index]["name"]),
                              Text(_dx.favorite[index]["number"].toString()),
                              
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

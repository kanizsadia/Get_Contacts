import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_application_6/app/modules/bottom_navi_bar/controllers/favourite_controller_controller.dart';

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
             
            decoration: InputDecoration(border:  OutlineInputBorder(borderSide: BorderSide(),
            borderRadius: BorderRadius.all(Radius.circular(4) ),
            
            
            ),),),
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
      floatingActionButton: FloatingActionButton(onPressed:(){},
      child: Icon(Icons.dialpad)    
      ),
       bottomNavigationBar: BottomBar(),
    );
  }
}

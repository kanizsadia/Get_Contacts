import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_6/app/modules/bottom_navi_bar/controllers/cantact_controller_controller.dart';

import 'package:get/get.dart';

class ContactView extends GetView {
  
  List <Contact>  contacts = [
    
  ];
  List <Contact>  contactsFiltered = [];
  

  TextEditingController searchController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    CantactControllerController dx = Get.put(CantactControllerController());
    bool isSearching = searchController.text.isNotEmpty;
    return Scaffold(
      
      body: Container(child: Column(
        children: [
          TextField(
            controller: searchController,
            decoration: InputDecoration(border:  OutlineInputBorder(borderSide: BorderSide(
              width: 3,
              color: Colors.blue,
            ),
            borderRadius: BorderRadius.all(Radius.circular(30) ),
            
          
            
            ),
            prefixIcon: Icon(Icons.search),
            hintText: "Search Contacts"
            
            
           
            ),

          ),
         Expanded(child:  ListView.builder(
            itemCount:isSearching == true ? contactsFiltered.length : dx.contact.length,
            itemBuilder: (context, index) {
              Contact contact = dx.contact[index];
              isSearching == true ? contactsFiltered[index] : dx.contact[index];
              return ListTile(
                title: Text(dx.contact[index]["name"]),
                subtitle:   Text(dx.contact[index]["number"].toString()),
                leading:
                CircleAvatar(
                  child: Text(contact.initials()),
                ),
                
                

              );
            }
            
            ),),
        ],
      ),)
     
    );
  }
}

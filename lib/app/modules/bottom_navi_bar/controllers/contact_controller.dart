import 'package:contacts_service/contacts_service.dart';
import 'package:get/get.dart';

class ContactController extends GetxController {
  //TODO: Implement ContactController
List <Contact>  contacts = [
    
  ];
  @override
  void onInit() {
    super.onInit();
    getAllContact();
  }
   getAllContact() async {
List<Contact> _contacts = await ContactsService.getContacts(withThumbnails: false);
Get.to(() {
  contacts = _contacts;
});
}

  
  
 
   }

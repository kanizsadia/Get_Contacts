import 'package:get/get.dart';

class FavouriteControllerController extends GetxController {
  //TODO: Implement FavouriteControllerController

  final  List favorite = [
    {
      "name": "Abhishek",
      "number": 65347250370,
    },
    {
      "name": "Raj",
      "number": 227863049102486,
    },
    {
      "name": "Rajesh",
      "number": 235468358354,
    },
    {
      "name": "Aakash",
      "number": 462396524,
    },
    {
      "name": "Sawon",
      "number": 27650434,
    },
    {
      "name": "Nahar",
      "number": 6534485624,
    },
    {
      "name": "Ponir",
      "number": 668344624,
    },
  ];
 void httpCall() async {
    await Future.delayed(Duration(seconds: 1), 
            () => favorite.add(favorite.last + 1)
    );
    update();
  }

  void reset() {
    // favorite= favorite.sublist();
    update();
  }
}

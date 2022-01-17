import 'package:get/get.dart';

class RecenctControllerController extends GetxController {
  //TODO: Implement RecenctControllerController

  late final  List recent = [
    {
      "name": "Abhishek",
      "number": 65347250370,
      "time": "8.40 am"
    },
    {
      "name": "Raj",
      "number": 227863049102486,
       "time": "8.44 am"
    },
    {
      "name": "Rajesh",
      "number": 235468358354,
       "time": "9.30 am"
    },
    {
      "name": "Aakash",
      "number": 462396524,
       "time": "11.14 am"
    },
    {
      "name": "Sawon",
      "number": 27650434,
       "time": "12.46 pm"
    },
    {
      "name": "Nahar",
      "number": 6534485624,
       "time": "1.01 pm"
    },
    {
      "name": "Ponir",
      "number": 668344624,
       "time": "7.02 pm"
    },
    {
      "name": "Rimel",
      "number": 2547434,
       "time": "6.08 pm"
    },
    {
      "name": "Aakash",
      "number": 3254736424,
       "time": "3.28 am"
    },
    {
      "name": "Sonia",
      "number": 348763224,
       "time": "4.46 am"
    }
    
  ];
   void httpCall() async {
    await Future.delayed(Duration(seconds: 1), 
            () => recent.add(recent.last + 1)
    );
    update();
  }

  void reset() {
    // recent = recent.sublist();
    update();
  }
}

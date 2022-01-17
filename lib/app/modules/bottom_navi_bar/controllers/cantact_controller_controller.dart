import 'package:get/get.dart';

class CantactControllerController extends GetxController {
  //TODO: Implement CantactControllerController

  final List contact = [
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
    {
      "name": "Rimel",
      "number": 2547434,
    },
    {
      "name": "Aakash",
      "number": 3254736424,
    },
    {
      "name": "Sonia",
      "number": 348763224,
    },
    {
      "name": "Aakash",
      "age": 24,
    },
    {
      "name": "Ema",
      "number": 453869024,
    },
    {
      "name": "Jita",
      "number": 23465924,
    },
    {
      "name": "Borsha",
      "number": 874396524,
    },
    {
      "name": "Aakash",
      "age": 24,
    },
    {
      "name": "Sathi",
      "number": 3465474824,
    },
    {
      "name": "Yeash",
      "number": 436529824,
    },

    {
      "name": "Kuaasha",
      "number": 32657324,
    },{
      "name": "Pranto",
      "number": 436528924,
    },
    {
      "name": "Urmi",
      "number": 3548924024,
    },
    {
      "name": "Prokash",
      "number": 57875424,
    },
    {
      "name": "Bela",
      "number": 437652924,
    },
   
    {
      "name": "Nipa",
      "number": 438756424,
    },
    {
      "name": "Sahanaz",
      "number": 324366524,
    },
    {
      "name": "Momo",
      "number": 46375624,
    },
    {
      "name": "Mamun",
      "number": 436457224,
    },
    {
      "name": "Maliha",
      "number": 437475424,
    },
    {
      "name": "Liza",
      "number": 43262524,
    },
    {
      "name": "Jisan",
      "number": 236547624,
    },
    {
      "name": "Irin",
      "number": 43653724,
    },

  ];
  void httpCall() async {
    await Future.delayed(Duration(seconds: 1), 
            () => contact.add(contact.last + 1)
    );
    update();
  }

  void reset() {
    //  contact = contact.sublist();
    update();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_6/app/routes/app_pages.dart';
import 'package:get/route_manager.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
       
        IconButton(
          icon: Icon(Icons.star),
          onPressed: () {
            Get.offAllNamed(Routes.FAVORITE);
            
          },
        ),
        IconButton(
          icon: Icon(Icons.history),
          onPressed: () {
            Get.offAllNamed(Routes.RECENT);
          },
        ),
        IconButton(

          icon: Icon(Icons.people),
          onPressed: () {
            Get.offAllNamed(Routes.CANTACT);
          }
          
          
          
        ),
      ],
    ),
    );
  }
}
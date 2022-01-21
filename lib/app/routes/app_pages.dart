import 'package:flutter_application_6/app/modules/bottom_navi_bar/bindings/cantact_binding.dart';
import 'package:flutter_application_6/app/modules/bottom_navi_bar/bindings/contact_binding.dart';
import 'package:flutter_application_6/app/modules/bottom_navi_bar/bindings/favourite_binding.dart';
import 'package:flutter_application_6/app/modules/bottom_navi_bar/bindings/recent_binding.dart';


import 'package:flutter_application_6/app/modules/bottom_navi_bar/views/cantact_view.dart';
import 'package:flutter_application_6/app/modules/bottom_navi_bar/views/contact_view.dart';

import 'package:flutter_application_6/app/modules/bottom_navi_bar/views/favorite_view.dart';

import 'package:flutter_application_6/app/modules/bottom_navi_bar/views/recent_view.dart';
import 'package:get/get.dart';

import '../modules/bottom_navi_bar/bindings/bottom_navi_bar_binding.dart';
import '../modules/bottom_navi_bar/views/bottom_navi_bar_view.dart';


part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.CONTACT;

  static final routes = [
   
    GetPage(
      name: _Paths.BOTTOM_NAVI_BAR,
      page: () => BottomNaviBarView(),
      binding: BottomNaviBarBinding(),
    ),
    
    GetPage(
      name: _Paths.FAVORITE,
      page: () => FavoriteView(),
      binding: FavouriteBinding(),
    ),
    
    GetPage(
      name: _Paths.RECENT,
      page: () => RecentView(),
      binding: RecentBinding(),
    ),
    
    GetPage(
      name: _Paths.CANTACT,
      page: () => CantactView(),
      binding: CantactBinding(),
    ),
     GetPage(
      name: _Paths.CONTACT,
      page: () => ContactView(),
       binding: ContactBinding(),

   
    ),
    

  ];
}

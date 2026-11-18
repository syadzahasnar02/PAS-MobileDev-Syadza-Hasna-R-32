import 'package:get/get.dart';
import 'package:pas_flutter/menu/feat.dart';
import 'package:pas_flutter/menu/home.dart';
import 'package:pas_flutter/menu/profile.dart';
import 'package:pas_flutter/pages/login_page.dart';
import 'package:pas_flutter/pages/main_menu_page.dart';
import 'package:pas_flutter/pages/transaksi_page.dart';

class Routes {
   static const String loginPage = '/loginPage';
   static const String mainMenuPage = '/mainMenuPage';
   static const String homePage = '/homePage';
   static const String featPage = '/featPage';
   static const String profilePage = '/profilePage';
   static const String transaksiPage = '/transaksiPage';

  static final myPages = [
    GetPage(name: mainMenuPage, page: () => MainMenuPage()),
    GetPage(name: loginPage, page: () => LoginPage()),
    GetPage(name: homePage, page: () => Home()),
    GetPage(name: featPage, page: () => Feat()),
    GetPage(name: profilePage, page: () => Profile()),
    GetPage(name: transaksiPage, page: () => TransaksiPage()),
  ];
}

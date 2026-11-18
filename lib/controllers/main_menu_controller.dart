import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_flutter/menu/feat.dart';
import 'package:pas_flutter/menu/home.dart';
import 'package:pas_flutter/menu/profile.dart';

class MainMenuController extends GetxController{
  var selectedIndex = 0.obs;

  final List<Widget> listPages = [
    Home(), 
    Feat(),
    Profile(),
  ];

  void changePage(int index) {
    selectedIndex.value = index;
  }
}
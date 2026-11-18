import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_flutter/controllers/main_menu_controller.dart';

class MainMenuPage extends StatelessWidget {
  MainMenuPage({super.key});

  final mainMenuController = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        appBar: AppBar(
        title: const Text(''),
      ),
      body: IndexedStack(
        index: mainMenuController.selectedIndex.value, 
        children: mainMenuController.listPages,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 58, 58, 58),
              ),
              child: Text(
                'Navigation',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home_filled),
              title: const Text("Home"),
              selected: mainMenuController.selectedIndex.value == 0,
              onTap: () {
                mainMenuController.changePage(0);
                Get.back();
              },
            ),
            ListTile(
              leading: const Icon(Icons.history_rounded),
              title: const Text("History"),
              selected: mainMenuController.selectedIndex.value == 1,
              onTap: () {
                mainMenuController.changePage(1);
                Get.back(); 
              },
            ),
            ListTile(
              leading: const Icon(Icons.person_rounded),
              title: const Text("Profile"),
              selected: mainMenuController.selectedIndex.value == 2,
              onTap: () {
                mainMenuController.changePage(2);
                Get.back(); 
              },
            ),
          ],
        ),
      ),
    ));
  }
}
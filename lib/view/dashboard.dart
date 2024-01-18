import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/dashboard.dart';

class ViewDashBoard extends StatelessWidget {
  final control = ControlDashboard();
  ViewDashBoard({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => control.pages[control.currentIndex.value],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          elevation: 10,
          backgroundColor: Colors.grey.shade200,
          unselectedItemColor: Colors.grey.shade600,
          selectedItemColor: Colors.blue,
          currentIndex: control.currentIndex.value,
          //showUnselectedLabels: true, => to show the name before tap on it
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
              backgroundColor: Color(
                0xff59396b,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.create_new_folder_rounded),
              label: 'create',
              backgroundColor: Color(
                0xff59396b,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'settings',
              backgroundColor: Color(
                0xff59396b,
              ),
            ),
          ],
          onTap: control.changePage,
        ),
      ),
    );
  }
}

import 'package:get/get.dart';
import '../view/create.dart';
import '../view/home.dart';
import '../view/settings.dart';

class ControlDashboard extends GetxController {
  var currentIndex = 0.obs;
  var pages = [
    const ViewHome(),
    const ViewCreate(),
    const ViewSettings(),
  ];

  void changePage(int index) {
    currentIndex.value = index;
  }
}

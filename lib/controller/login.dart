import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControlLogin extends GetxController {
  TextEditingController password = TextEditingController();
  var isPasswordVisible = false;
  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    update();
  }
}

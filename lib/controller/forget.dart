import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_task/view/signup.dart';

class ForgetPassword extends GetxController {
  final auth = FirebaseAuth.instance;
  TextEditingController forgetEmail = TextEditingController();
  forget() async {
    await auth.sendPasswordResetEmail(email: forgetEmail.text);
    Get.to(ViewSignUp());
    update();
  }
}

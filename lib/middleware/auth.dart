import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_task/controller/signup.dart';

class AuthMiddleWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    final authService = Get.find<ControlSignUp>();
    if (authService.auth.currentUser!.uid.isNotEmpty) {
      return RouteSettings(name: '/dashboard');
    } else {
      RouteSettings(name: '/');
    }
    return super.redirect(route);
  }
}

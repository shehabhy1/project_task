import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_task/controller/signup.dart';
import 'package:project_task/firebase_options.dart';
import 'package:project_task/middleware/auth.dart';
import 'package:project_task/view/dashboard.dart';
import 'package:project_task/view/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final con = Get.put(ControlSignUp());
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/',
          page: () => ViewLogin(),
          middlewares: [
            AuthMiddleWare(),
          ],
        ),
        GetPage(name: '/dashboard', page: () => ViewDashBoard()),
      ],
    );
  }
}

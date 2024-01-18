import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_task/view/signup.dart';

class ViewHome extends StatelessWidget {
  const ViewHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
        leading: IconButton(
            onPressed: () {
              Get.offAll(() => ViewSignUp());
            },
            icon: Icon(Icons.navigate_before)),
      ),
      /* 
      bottom navigation bar
      home 
      create
      settings
       */
    );
  }
}

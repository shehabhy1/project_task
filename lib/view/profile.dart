import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:project_task/constants/images.dart';
import 'package:project_task/widgets/custom_button.dart';
import 'package:project_task/widgets/custom_field.dart';
import 'package:project_task/widgets/custom_text.dart';

class ViewProfile extends StatelessWidget {
  ViewProfile({super.key});
  final keys = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Form(
          key: keys,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 40),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(ImageApp.avatar),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CustomText(text: 'text')
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: CustomElevatedButton(
                  onPressed: () => log('message'),
                  child: Text('upload photo'),
                ),
              ),
              CustomTextFormField(
                keyField: GlobalKey(),
                controller: TextEditingController(),
                label: 'First Name',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                keyField: GlobalKey(),
                controller: TextEditingController(),
                label: 'Last Name',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                keyField: GlobalKey(),
                controller: TextEditingController(),
                label: 'Email',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                keyField: GlobalKey(),
                controller: TextEditingController(),
                label: 'address',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                keyField: GlobalKey(),
                controller: TextEditingController(),
                label: 'phone number',
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: CustomElevatedButton(
                  child: Text('update profile'),
                  onPressed: () => log('message'),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}

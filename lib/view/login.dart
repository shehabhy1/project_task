import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_task/controller/login.dart';
import 'package:project_task/view/forget_password.dart';
import 'package:project_task/view/signup.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_field.dart';
import '../widgets/custom_text.dart';

class ViewLogin extends StatelessWidget {
  ViewLogin({super.key});
  final put = Get.put(ControlLogin());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextFormField(
                controller: TextEditingController(),
                keyField: GlobalKey(),
                label: 'email',
                isObscure: false,
              ),
              SizedBox(
                height: 10,
              ),
              GetBuilder<ControlLogin>(
                builder: (read) => CustomTextFormField(
                  suffix: InkWell(
                    onTap: () {
                      read.togglePasswordVisibility();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Icon(
                        read.isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  controller: put.password,
                  label: 'password',
                  isObscure: !read.isPasswordVisible,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CustomElevatedButton(
                child: CustomText(text: 'login with email'),
                onPressed: () => log('message'),
              ),
              SizedBox(
                height: 10,
              ),
              CustomElevatedButton(
                child: CustomText(text: 'login with Google'),
                onPressed: () => log('message'),
              ),
              SizedBox(
                height: 15,
              ),
              //sign up => blue
              Row(
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  CustomText(text: "don't have an account?"),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () => Get.off(() => ViewSignUp()),
                    child: CustomText(
                      text: 'sign up',
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                  onTap: () => Get.offAll(() => ViewForgetPassword()),
                  child: CustomText(text: 'forget password'))
            ],
          ),
        ),
      ),
    );
  }
}

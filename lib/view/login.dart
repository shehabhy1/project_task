import 'dart:developer';

import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_field.dart';
import '../widgets/custom_text.dart';

class ViewLogin extends StatelessWidget {
  const ViewLogin({super.key});

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
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                controller: TextEditingController(),
                keyField: GlobalKey(),
                label: 'password',
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
              CustomText(text: "don't have an account? sign up"),
            ],
          ),
        ),
      ),
    );
  }
}

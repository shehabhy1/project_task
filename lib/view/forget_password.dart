import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_task/constants/images.dart';
import 'package:project_task/controller/forget.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_field.dart';
import '../widgets/custom_text.dart';

class ViewForgetPassword extends StatelessWidget {
  ViewForgetPassword({super.key});
  final con = Get.put(ForgetPassword());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ForgetPassword>(
        init: ForgetPassword(),
        builder: (read) => Column(
          children: [
            SizedBox(
              height: 50,
            ),
            SizedBox(
                child: Column(
              children: [Image.asset(ImageApp.forget)],
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text:
                    'with provider law firms across the united states and canada ',
                fontSize: 18,
              ),
            ),
            CustomTextFormField(
              isObscure: false,
              controller: read.forgetEmail,
              label: 'EMAIL',
            ),
            SizedBox(
              height: 10,
            ),
            CustomElevatedButton(
              onPressed: () {
                con.forget();
              },
              backgroundColor: Colors.blue,
              child: CustomText(
                text: 'Reset Password',
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

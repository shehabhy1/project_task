import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_task/controller/signup.dart';
import 'package:project_task/result.dart';
import 'package:project_task/widgets/custom_field.dart';
import 'package:project_task/widgets/custom_text.dart';

import '../widgets/custom_button.dart';

class ViewSignUp extends StatelessWidget {
  const ViewSignUp({super.key});
  @override
  Widget build(BuildContext context) {
    var useController = Get.put(ControlSignUp());
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Form(
          key: useController.keysForm,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: CustomText(text: 'create your account'),
              ),
              SizedBox(
                height: 10,
              ),
              // clickable
              // default avatar
              /*  
              stack => alignment == alignment.bottomend
              icon plus  
               */
              GetBuilder<ControlSignUp>(
                builder: (controllers) => CircleAvatar(
                  radius: 35,
                  backgroundImage: controllers.file != null
                      ? FileImage(controllers.file!)
                      : null,
                  child: controllers.file == null
                      ? Align(
                          alignment: Alignment.bottomRight,
                          child: GestureDetector(
                              onTap: () {
                                controllers.selectImage();
                              },
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.blue,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              )),
                        )
                      : null,
                ),
              ),
              CustomTextFormField(
                onChange: (val) => useController.firstName.value = val,
                label: 'First Name',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                onChange: (val) => useController.lastName.value = val,
                label: 'Last Name',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                onChange: (val) => useController.email.value = val,
                label: 'Email',
              ),
              SizedBox(
                height: 10,
              ),

              CustomTextFormField(
                onChange: (val) => useController.address.value = val,
                label: 'address',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                onChange: (val) => useController.phoneNumber.value = val,
                label: 'phone number',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                onChange: (val) => useController.password.value = val,
                label: 'password',
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: CustomElevatedButton(
                  onPressed: () {
                    useController.signupFunction();
                    log(useController.firstName.value);
                  },
                  fixedSize: Size(260, 25),
                  child: CustomText(text: 'SIGN UP WITH EMAIL'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: CustomElevatedButton(
                  onPressed: () => Get.to(ResultScreen()),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                          width: 25,
                          height: 25,
                          child: Image.asset(
                            'lib/assets/img/google.png',
                          )),
                      CustomText(text: 'SIGN UP WITH GOOGLE'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // terms of service , privacy policy => blue
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: CustomText(
                  text:
                      'By creating an account, you agree to our terms of service and privacy policy',
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              // sign in => blue
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: CustomText(text: 'already a member? sign in'),
              )
            ],
          ),
        ),
      )),
    );
  }
}
/*  validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    Get.showSnackbar(GetSnackBar(
                                      message: 'برجاء ادخال الاسم الاخير',
                                    ));
                                  } else if (value.length < 2 ||
                                      value.contains(RegExp(r'[0-9]')) ||
                                      value.contains(
                                        RegExp(r'[0-9٠١٢٣٤٥٦٧٨٩]'),
                                      )) {
                                    Get.showSnackbar(GetSnackBar(
                                      message: 'برجاء كتابة الاسم الاخير صحيحا',
                                    ));
                                  }
                                  return null;
                                },
                                onSaved: (newValue) {
                                  controller.lastNameController.text =
                                      newValue!;
                                }, */
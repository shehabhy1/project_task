import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_task/constants/images.dart';
import 'package:project_task/controller/signup.dart';
import 'package:project_task/result.dart';
import 'package:project_task/view/dashboard.dart';
import 'package:project_task/view/login.dart';
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
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: CustomText(text: 'create your account'),
              ),
              SizedBox(
                height: 10,
              ),

              GetBuilder<ControlSignUp>(
                  builder: (controllers) => controllers.file != null
                      ? GestureDetector(
                          onTap: () => controllers.selectImage(),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: CircleAvatar(
                              radius: 35,
                              backgroundImage: FileImage(controllers.file!),
                            ),
                          ),
                        )
                      : GestureDetector(
                          onTap: () => controllers.selectImage(),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage(ImageApp.avatar),
                              child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: CircleAvatar(
                                    radius: 10,
                                    backgroundColor: Colors.blue,
                                    child: Icon(
                                      Icons.add,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                  )),
                            ),
                          ),
                        )),
              CustomTextFormField(
                isObscure: false,
                onChange: (val) => useController.firstName.value = val,
                label: 'First Name',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                isObscure: false,
                onChange: (val) => useController.lastName.value = val,
                label: 'Last Name',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                validator: (p0) => '',
                onSaved: (pp) => '',
                isObscure: false,
                onChange: (val) => useController.email.value = val,
                label: 'Email',
              ),
              SizedBox(
                height: 10,
              ),

              CustomTextFormField(
                isObscure: false,
                onChange: (val) => useController.address.value = val,
                label: 'address',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                isObscure: false,
                onChange: (val) => useController.phoneNumber.value = val,
                label: 'phone number',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                isObscure: false,
                onChange: (val) => useController.password.value = val,
                label: 'password',
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: CustomElevatedButton(
                  backgroundColor: Colors.blue,
                  onPressed: () {
                    //Get.to(ViewDashBoard());
                    useController.signupFunction();
                    log(useController.firstName.value);
                  },
                  fixedSize: Size(260, 25),
                  child: CustomText(
                    text: 'SIGN UP WITH EMAIL',
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: CustomElevatedButton(
                  backgroundColor: Colors.white,
                  onPressed: () => log('message'),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 25,
                        height: 25,
                        child: Image.asset(
                          ImageApp.googleIcon,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomText(
                        text: 'SIGN UP WITH GOOGLE',
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // terms of service , privacy policy => blue
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'By creating an account, you agree to our ',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: 'terms of service ',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                      TextSpan(
                        text: 'and ',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: 'privacy policy',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  CustomText(text: 'already a member? '),
                  GestureDetector(
                    onTap: () => Get.to(() => ViewLogin()),
                    child: CustomText(
                      text: 'sign in',
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      )),
    );
  }
}
/* var isPasswordVisible = false;
  static ControlLogin get to => Get.find();

  RxBool isLoggedIn = false.obs;
  //final box = GetStorage();

  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    update();
  }
  ////////////
   suffixIcon: InkWell(
                    onTap: () {
                      controller.togglePasswordVisibility();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Icon(
                        controller.isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.white,
                      ),
                    ),
                  ),
   */
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
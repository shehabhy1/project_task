/* import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/signup.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key});
  final ControlSignUp controlSignUp = Get.find<ControlSignUp>();

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Initialize controllers with current values
    firstNameController.text = controlSignUp.firstName.value;
    lastNameController.text = controlSignUp.lastName.value;
    emailController.text = controlSignUp.email.value;
    phoneNumberController.text = controlSignUp.phoneNumber.value;

    return Scaffold(
      appBar: AppBar(
        title: Text('User Information'),
      ),
      body: Center(
        child: Obx(() {
          if (controlSignUp.user.value != null) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: FileImage(controlSignUp.file!),
                ),
                Text('First Name: ${controlSignUp.firstName.value}'),
                ElevatedButton(
                  onPressed: () {
                    // Show the bottom sheet for editing
                    showModalBottomSheet(
                        context: context,
                        builder: (context) => EditBottomSheet(
                              firstNameController: firstNameController,
                              lastNameController: lastNameController,
                              emailController: emailController,
                              phoneNumberController: phoneNumberController,
                              onSave: () {
                                // Update the corresponding RxString variables
                                controlSignUp.firstName.value =
                                    firstNameController.text;
                                controlSignUp.lastName.value =
                                    lastNameController.text;
                                controlSignUp.email.value =
                                    emailController.text;
                                controlSignUp.phoneNumber.value =
                                    phoneNumberController.text;

                                // Dismiss the bottom sheet
                                Navigator.pop(context);
                              },
                            ),
                        isScrollControlled: true);
                  },
                  child: Text('Edit Information'),
                ),
              ],
            );
          } else {
            return CircularProgressIndicator();
          }
        }),
      ),
    );
  }

  Widget buildEditableField(
    String label,
    RxString? value,
    TextEditingController controller,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text('$label: '),
          Expanded(
            child: TextFormField(
              controller: controller,
              enabled: controller.text.isNotEmpty, // Disable if empty
              onChanged: (text) {
                // Update the corresponding RxString variable
                value!.value = text;
              },
            ),
          ),
        ],
      ),
    );
  }
}

class EditBottomSheet extends StatelessWidget {
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController emailController;
  final TextEditingController phoneNumberController;
  final VoidCallback onSave;

  EditBottomSheet({
    required this.firstNameController,
    required this.lastNameController,
    required this.emailController,
    required this.phoneNumberController,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          buildEditableField('First Name', firstNameController),
          buildEditableField('Last Name', lastNameController),
          buildEditableField('Email', emailController),
          buildEditableField('Phone Number', phoneNumberController),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: onSave,
            child: Text('Save'),
          ),
        ],
      ),
    );
  }

  Widget buildEditableField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text('$label: '),
          Expanded(
            child: TextFormField(
              controller: controller,
              onChanged: (text) {},
            ),
          ),
        ],
      ),
    );
  }
}
 */
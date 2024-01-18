import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project_task/view/dashboard.dart';
import 'package:project_task/view/home.dart';
import 'package:project_task/view/login.dart';

class ControlSignUp extends GetxController {
  RxString firstName = ''.obs;
  RxString lastName = ''.obs;
  RxString email = ''.obs;
  RxString password = ''.obs;
  RxString address = ''.obs;
  RxString phoneNumber = ''.obs;
  late GlobalKey<FormState> keysForm;
  File? file;
  final db = FirebaseFirestore.instance.collection('users');
  final auth = FirebaseAuth.instance;
  Rx<User?> user = Rx<User?>(null);
  @override
  void onInit() {
    super.onInit();
    user.bindStream(auth.authStateChanges());
    keysForm = GlobalKey<FormState>();
  }

  void selectImage() async {
    var pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      file = File(pickedFile.path);
      update();
      /* final ref = FirebaseStorage.instance.ref('images');
      await ref.putFile(file!);
      imgUrl = ref.getDownloadURL(); */
    }

    update();
  }

  signupFunction() async {
    Get.dialog(
      Center(
        child: CircularProgressIndicator(),
      ),
      barrierDismissible: false, // Prevent users from dismissing the dialog
    );
    try {
      // Create Firebase user
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email.value,
        password: password.value,
      );

      // Save user data to Firestore
      await db.doc(userCredential.user!.uid).set({
        'firstName': firstName.value,
        'lastName': lastName.value,
        'email': email.value,
        'password': password.value,
        'address': address.value,
        'phoneNumber': phoneNumber.value,
        'image': file.toString()
      });
      user.value = auth.currentUser;

      Get.to(() => ViewLogin());
    } catch (e) {
      //isLoading.value = false;
      Get.snackbar('Error', e.toString());
    }
    update();
  }

  void updateUserInfo(String newFirstName, String newLastName, String newEmail,
      String newPhoneNumber) {
    try {
      if (auth.currentUser != null) {
        db.doc(auth.currentUser!.uid).update({
          'firstName': newFirstName,
          'lastName': newLastName,
          'email': newEmail,
          'phoneNumber': newPhoneNumber,
        });

        Get.snackbar('Success', 'User information updated successfully');
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to update user information: $e');
    }
  }
}

/* 
final user = UserModel(
      id: auth.currentUser!.uid,
      image: file.toString(),
      firstName: firstName.text,
      lastName: lastName.text,
      email: email.text,
      password: password.text,
      phoneNumber: phoneNumber.text,
    );
    final docRef = db
        .collection('users')
        .withConverter(
          fromFirestore: UserModel.FromFireStore,
          toFirestore: (UserModel userModel, options) =>
              userModel.toFirestore(),
        )
        .doc();
    await docRef.set(user);
 */
/* void signup() async {
    if (formkey.currentState!.validate()) {
      isLoading;
      formkey.currentState!.save();

      //////////////////////////////////////

      try {
        isLoading = true;
        update();
        await auth.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );
        Reference storageReference =
            FirebaseStorage.instance.ref().child('user_images');
        await storageReference.putFile(file!);
        String imageUrl = await storageReference.getDownloadURL();

        await FirebaseFirestore.instance.collection('users').add(
          {
            'user id': auth.currentUser!.uid,
            'email': emailController.text,
            'first name': firstNameController.text,
            'last name': lastNameController.text,
            'date of birth': dataOFBirthController.text,
            'photo': imageUrl,
          },
        );
        Get.offAll(() => Login());
      } catch (e) {
        // Show an error message if signup fails
      } finally {
        isLoading = false;
      }
    }
    update();
  }
} */
/* 
void signup() async {
    try {
      if (emailController.text.isEmpty) {
        Get.showSnackbar(GetSnackBar(
          title: '56555555555555',
          message: '56555555555555',
        ));
      } else {
        final filename = p.basename(file!.path);
        final destination = Uri.file(filename).pathSegments.last;
        Reference storageReference =
            FirebaseStorage.instance.ref().child('user images/$destination');
        await storageReference.putFile(file!);
        String imgUrl = await storageReference.getDownloadURL();
        await auth
            .createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        )
            .then((value) async {
          /* UserModel user = UserModel(
              id: auth.currentUser!.uid,
              fName: firstNameController.text,
              lName: lastNameController.text,
              email: emailController.text,
              password: passwordController.text,
              pic: imgUrl,
              gender: gender); */
          //Map<String, dynamic> userData = user.toJson();
          await FirebaseFirestore.instance.collection('users').add({
            'id': auth.currentUser!.uid,
            'firstname': firstNameController.text,
            'lastname': lastNameController.text,
            'email': emailController.text,
            'pic': imgUrl,
          });
          // user.id.replaceAll(auth.currentUser!.uid, auth.currentUser!.email.toString());
          log('success');
        });
        update();
      }
    } catch (e) {
      Get.snackbar(
        'Error',
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
      // Show an error message if signup fails
    } finally {
      isLoading = false;
    }
    update();
  }
}
 */
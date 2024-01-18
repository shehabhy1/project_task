import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String image;
  String firstName;
  String lastName;
  String email;
  String password;
  String phoneNumber;

  UserModel({
    required this.image,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.phoneNumber,
  });
  /*  factory UserModel.FromFireStore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return UserModel(
      id: data?['id'],
      image: data?['image'],
      firstName: data?['firstname'],
      lastName: data?['lastname'],
      email: data?['email'],
      password: data?['password'],
      phoneNumber: data?['phone'],
    );
  }
  Map<String, dynamic> toFirestore() {
    return {
      "id": id,
      "image": image,
      "name": firstName,
      "lastname": lastName,
      "email": email,
      "password": password,
      "phone": phoneNumber,
    };
  } */
}

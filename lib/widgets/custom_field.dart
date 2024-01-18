import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,
    this.controller,
    this.keyField,
    this.label,
    this.hint,
    this.onChange,
    this.onSaved,
    this.validator,
    this.type,
  });
  Key? keyField;
  void Function(String?)? onSaved;
  String? Function(String?)? validator;
  IconData? icon;
  TextEditingController? controller;
  TextInputType? type;
  Function(String)? onChange;
  String? label;
  String? hint;
  IconData? prefix;
  bool isObscure = false;
  Widget? suffix;
  Function()? pressed;
  Function()? tap;
  EdgeInsetsGeometry? padding;
  InputBorder? border;
  bool? enable;
  Color background = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 20),
      child: TextFormField(
        key: key,
        maxLines: null,
        onChanged: onChange,
        validator: validator,
        onSaved: onSaved,
        style: TextStyle(color: Colors.cyanAccent),
        cursorColor: Colors.black,
        controller: controller,
        obscureText: isObscure,
        keyboardType: type,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: Colors.black),
          labelText: label,
          labelStyle: TextStyle(color: Colors.black),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade400,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade400,
            ),
          ),
          suffixIcon: Icon(icon),
        ),
      ),
    );
  }
}

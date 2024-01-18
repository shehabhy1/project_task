import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton({super.key, this.onPressed, this.child, this.fixedSize});
  void Function()? onPressed;
  Size? fixedSize;
  Widget? child;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber, fixedSize: fixedSize),
        onPressed: onPressed,
        child: child);
  }
}

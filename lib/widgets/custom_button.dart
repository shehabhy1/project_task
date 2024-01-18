import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton(
      {super.key,
      this.onPressed,
      this.child,
      this.fixedSize,
      this.backgroundColor});
  void Function()? onPressed;
  Size? fixedSize;
  Widget? child;
  Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor, fixedSize: fixedSize),
        onPressed: onPressed,
        child: child);
  }
}

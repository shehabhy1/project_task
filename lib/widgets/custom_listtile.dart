import 'package:flutter/material.dart';
import 'package:project_task/widgets/custom_text.dart';

class CustomListTile extends StatelessWidget {
  CustomListTile({
    super.key,
    this.radius = 20,
    Color? backgroundColor = Colors.blue,
    required this.text,
    this.fontSize,
    this.width = 250,
    this.height = 150,
  });
  double? radius;
  Color? backgroundColor;
  String text;
  double? fontSize;
  double? width;
  double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: Colors.white,
      child: ListTile(
        title: CustomText(text: 'text'),
        leading: CircleAvatar(
          radius: 20,
          backgroundColor: Colors.blue,
          child: Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),
        subtitle: CustomText(text: 'subtitle'),
        trailing: Icon(Icons.navigate_next),
      ),
    );
  }
}

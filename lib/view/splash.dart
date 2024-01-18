import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_task/view/home.dart';
import 'package:project_task/widgets/custom_button.dart';
import 'package:project_task/widgets/custom_text.dart';

class ViewSplashScreen extends StatelessWidget {
  const ViewSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomElevatedButton(
                onPressed: () => Get.offAll(() => const ViewHome()),
                child: CustomText(text: 'go to'),
              ),
              Stack(
                children: [
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'e - ',
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'Sign App',
                          style: TextStyle(
                            fontFamily: 'Satisfy',
                            fontSize: 32,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomText(
                    text: 'signature',
                    fontFamily: 'Satisfy',
                  ),
                ],
              ),
              CustomText(
                text:
                    'eSign app help us to signature on important\ndocuments in an easy way',
                fontSize: 16,
              )
            ],
          ),
        ),
      ),
    );
  }
}

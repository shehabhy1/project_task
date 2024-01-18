import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_field.dart';
import '../widgets/custom_text.dart';

class ViewForgetPassword extends StatelessWidget {
  const ViewForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 150,
            height: 150,
            child: Image.asset('lib/assets/img/avatar.jpg'),
          ),
          CustomText(text: 'forgot password?'),
          CustomText(
            text:
                'with provider law firms across the united states and canada ',
          ),
          CustomTextFormField(
            controller: TextEditingController(),
            keyField: GlobalKey(),
            label: 'EMAIL',
          ),
          SizedBox(
            height: 10,
          ),
          CustomElevatedButton(
            child: CustomText(text: 'Reset Password'),
          )
        ],
      ),
    );
  }
}

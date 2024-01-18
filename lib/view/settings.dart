import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_task/controller/signup.dart';
import 'package:project_task/view/profile.dart';
import 'package:project_task/widgets/custom_listtile.dart';

import '../widgets/custom_text.dart';

class ViewSettings extends StatelessWidget {
  const ViewSettings({super.key});

  @override
  Widget build(BuildContext context) {
    final put = Get.put(
      ControlSignUp(),
    );
    return Scaffold(
      backgroundColor: Colors.white38,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 80),
                    child: CustomText(text: 'Settings'),
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.rectangle),
                      width: 40,
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Icon(
                          Icons.logout,
                          color: Colors.blue,
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: CustomText(text: 'update your preference'),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: CustomText(text: 'ACCOUNT SETTINGS'),
              ),
              Container(
                width: 300,
                height: 200,
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      title: CustomText(
                        text: 'profile information',
                        fontSize: 14,
                      ),
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.blue,
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                      subtitle: CustomText(
                        text: 'Name , Email , Security',
                        fontSize: 12,
                      ),
                      trailing: IconButton(
                          onPressed: () {
                            Get.to(ViewProfile());
                          },
                          icon: const CircleAvatar(
                              radius: 12,
                              backgroundColor: Colors.grey,
                              child: Padding(
                                padding: EdgeInsets.only(right: 5),
                                child: Icon(Icons.navigate_next),
                              ))),
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: 0.1,
                    ),
                    ListTile(
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
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              CustomText(text: 'Notification Settings'),
              Container(
                width: 250,
                height: 150,
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
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 250,
                height: 150,
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
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
                    Divider(
                      color: Colors.black,
                      thickness: 3,
                      endIndent: 50,
                      indent: 50,
                    ),
                    ListTile(
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
                    Divider(
                      color: Colors.black,
                      thickness: 3,
                      endIndent: 50,
                      indent: 50,
                    ),
                    ListTile(
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
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CustomText(text: 'connected account'),
              Container(
                width: 250,
                height: 150,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

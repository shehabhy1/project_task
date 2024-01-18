import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_task/view/profile.dart';

import '../widgets/custom_text.dart';

class ViewSettings extends StatelessWidget {
  const ViewSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  CustomText(text: 'Settings'),
                  Icon(Icons.logout),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CustomText(text: 'update your preference'),
              SizedBox(
                height: 15,
              ),
              CustomText(text: 'ACCOUNT SETTINGS'),
              Container(
                width: 300,
                height: 200,
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
                      trailing: IconButton(
                          onPressed: () {
                            Get.to(ViewProfile());
                          },
                          icon: Icon(Icons.navigate_next)),
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: 1,
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

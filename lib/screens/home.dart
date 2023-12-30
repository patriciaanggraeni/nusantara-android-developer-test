import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nusantara_android_developer_test/controllers/firebase_auth_controller.dart';
import 'package:nusantara_android_developer_test/utils/util.dart';
import 'package:nusantara_android_developer_test/widgets/button.dart';

class Home extends StatelessWidget {
  const Home({super.key, required this.username});
  final String username;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {
              FirebaseAuthController.instance.logout();
            },
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
          ),
        ],
        title: Text(
          "Hello, $username",
          style: Util.myTextStyle(
            size: 20,
            weight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Home Page",
                  style: Util.myTextStyle(
                    size: 35,
                    weight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                  text: "Log out",
                  callback: () {
                    FirebaseAuthController.instance.logout();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

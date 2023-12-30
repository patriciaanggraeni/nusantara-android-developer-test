import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nusantara_android_developer_test/controllers/firebase_auth_controller.dart';
import 'package:nusantara_android_developer_test/utils/util.dart';
import 'package:nusantara_android_developer_test/widgets/button.dart';
import 'package:nusantara_android_developer_test/widgets/header.dart';
import 'package:nusantara_android_developer_test/widgets/text_form.dart';
import 'package:nusantara_android_developer_test/controllers/register_controller.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    RegisterController registerController = Get.put(RegisterController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "S I G N U P",
          style: Util.myTextStyle(
            size: 20, 
            weight: FontWeight.bold, 
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const Header(
                  textOne: "Lets Register Account", 
                  textTwo: "Hello, User!",
                ),
                const SizedBox(height: 25,),
                CustomTextFormField(
                  controller: registerController.username,
                  icon: Icons.person, 
                  hint: "Username",
                ),
                const SizedBox(height: 15,),
                CustomTextFormField(
                  controller: registerController.email,
                  icon: Icons.email, 
                  hint: "Email",
                ),
                const SizedBox(height: 15,),
                CustomTextFormField(
                  controller: registerController.password,
                  icon: Icons.password, 
                  hint: "Password",
                ),
                const SizedBox(height: 30,),
                CustomButton(
                  text: "Sign up", 
                  callback: () {
                    FirebaseAuthController.instance.register(
                      registerController.username.text.trim(),
                      registerController.email.text.trim(), 
                      registerController.password.text.trim(),
                    );
                  },
                ),
                const SizedBox(height: 15,),
                Text(
                  "Already have account?",
                  style: Util.myTextStyle(
                    size: 15
                  ),
                ),
                const SizedBox(height: 15,),
                CustomButton(
                  text: "Sign in", 
                  callback: () {
                    Get.back();
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
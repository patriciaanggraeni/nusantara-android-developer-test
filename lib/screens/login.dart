import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:nusantara_android_developer_test/controllers/firebase_auth_controller.dart';
import 'package:nusantara_android_developer_test/utils/util.dart';
import 'package:nusantara_android_developer_test/widgets/header.dart';
import 'package:nusantara_android_developer_test/widgets/button.dart';
import 'package:nusantara_android_developer_test/screens/register.dart';
import 'package:nusantara_android_developer_test/controllers/login_controller.dart';
import 'package:nusantara_android_developer_test/widgets/text_form.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.put(LoginController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "S I G N I N",
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
                  textOne: "Login Account", 
                  textTwo: "Welcome back, User!",
                ),
                const SizedBox(height: 25,),
                CustomTextFormField(
                  controller: loginController.email,
                  icon: Icons.email, 
                  hint: "Email",
                ),
                const SizedBox(height: 15,),
                CustomTextFormField(
                  controller: loginController.password,
                  icon: Icons.password, 
                  hint: "Password",
                ),
                const SizedBox(height: 30,),
                CustomButton(
                  text: "Sign in", 
                  callback: () {
                    FirebaseAuthController.instance.login(
                      loginController.email.text.trim(), 
                      loginController.password.text.trim(),
                    );
                  },
                ),
                const SizedBox(height: 15,),
                Text(
                  "Dont have account?",
                  style: Util.myTextStyle(
                    size: 15
                  ),
                ),
                const SizedBox(height: 15,),
                CustomButton(
                  text: "Sign up", 
                  callback: () {
                    Get.to(const Register());
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
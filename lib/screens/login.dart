import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nusantara_android_developer_test/utils/font.dart';
import 'package:nusantara_android_developer_test/widgets/button.dart';
import 'package:nusantara_android_developer_test/widgets/header.dart';
import 'package:nusantara_android_developer_test/widgets/text_form.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();

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
                  controller: username,
                  icon: Icons.person, 
                  hint: "Email",
                ),
                const SizedBox(height: 15,),
                CustomTextFormField(
                  controller: password,
                  icon: Icons.password, 
                  hint: "Password",
                ),
                const SizedBox(height: 30,),
                CustomButton(
                  text: "Sign in", 
                  callback: () {},
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
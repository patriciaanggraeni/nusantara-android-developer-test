import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nusantara_android_developer_test/screens/login.dart';
import 'package:nusantara_android_developer_test/utils/font.dart';
import 'package:nusantara_android_developer_test/widgets/button.dart';
import 'package:nusantara_android_developer_test/widgets/header.dart';
import 'package:nusantara_android_developer_test/widgets/text_form.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    TextEditingController phoneNumber = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

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
                  controller: username,
                  icon: Icons.person, 
                  hint: "Username",
                ),
                const SizedBox(height: 15,),
                CustomTextFormField(
                  controller: phoneNumber,
                  icon: Icons.phone, 
                  hint: "Phone Number",
                ),
                const SizedBox(height: 15,),
                CustomTextFormField(
                  controller: email,
                  icon: Icons.email, 
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
                  text: "Sign up", 
                  callback: () {},
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
                    Get.to(const Login());
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
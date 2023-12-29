import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nusantara_android_developer_test/utils/util.dart';
import 'package:nusantara_android_developer_test/controllers/firebase_auth_controller.dart';

class RegisterController extends GetxController {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _phoneNumber = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  TextEditingController get username => _username;
  TextEditingController get phoneNumber => _phoneNumber;
  TextEditingController get email => _email;
  TextEditingController get password => _password;
}
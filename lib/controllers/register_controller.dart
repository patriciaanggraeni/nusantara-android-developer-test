import 'package:get/get.dart';
import 'package:flutter/material.dart';

class RegisterController extends GetxController {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  

  TextEditingController get username => _username;
  TextEditingController get email => _email;
  TextEditingController get password => _password;
}
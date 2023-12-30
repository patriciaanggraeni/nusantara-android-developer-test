import 'package:get/get.dart';
import 'package:flutter/widgets.dart';

class LoginController extends GetxController {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  TextEditingController get email => _email;
  TextEditingController get password => _password;
}
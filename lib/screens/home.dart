import 'package:flutter/material.dart';
import 'package:nusantara_android_developer_test/utils/util.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home Page"
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Text(
            "Home Page",
            style: Util.myTextStyle(
              size: 35,
              weight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
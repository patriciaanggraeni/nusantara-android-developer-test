import 'package:flutter/material.dart';
import 'package:nusantara_android_developer_test/utils/util.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.callback});

  final String text;
  final Function() callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: Util.myTextStyle(
                  color: Colors.white,
                  size: 15,
                  weight: FontWeight.bold
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
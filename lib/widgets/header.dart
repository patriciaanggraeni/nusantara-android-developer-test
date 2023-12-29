import 'package:flutter/material.dart';
import 'package:nusantara_android_developer_test/utils/util.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.textOne, required this.textTwo});

  final String textOne;
  final String textTwo;

  @override
  Widget build(BuildContext context) {
    double screenWidth =  MediaQuery.of(context).size.width;

    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              textOne,
              style: Util.myTextStyle(
                size: screenWidth > 600 ? 25 : 20, 
                weight: FontWeight.bold,
              ),
            ),
            Text(
              textTwo,
              style: Util.myTextStyle(
                size: screenWidth > 600 ? 20 : 15,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
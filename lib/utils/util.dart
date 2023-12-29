import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Util {

    static TextStyle myTextStyle({
      double size = 12, 
      FontWeight weight = FontWeight.normal,
      Color color = Colors.black,
    }) {
      return GoogleFonts.poppins(
        fontSize: size,
        fontWeight: weight,
        color: color,
      );
    }

    static void snackBar({String message = "", int statusCode = 0}) {
    
    Get.snackbar("", "",
      backgroundColor: statusCode == 0 ? Colors.red : Colors.green,
      snackPosition: SnackPosition.BOTTOM,
      margin: const EdgeInsets.all(10),
      titleText: Text(
        "User Account",
        style: Util.myTextStyle(
          size: 15,
          color: Colors.white,
        ),
      ),
      messageText: Text(
        message,
        style: Util.myTextStyle(
          size: 15,
          color: Colors.white,
        ),
      ),
    );
  }

}
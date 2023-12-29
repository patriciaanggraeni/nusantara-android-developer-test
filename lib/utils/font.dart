import 'package:flutter/material.dart';
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

}
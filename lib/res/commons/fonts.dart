import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_manager/res/commons/colors.dart';

class AppTextStyles {

  static TextStyle grey({double? fontSize, FontWeight? fontWeight}) {
    return GoogleFonts.poppins(
      fontSize: fontSize,
      color: AppColor.customgrey,
      fontWeight: fontWeight ?? FontWeight.w400,
    );
  }

  // White Text Style
  static TextStyle white({double? fontSize, FontWeight? fontWeight}) {
    return GoogleFonts.poppins(
      fontSize: fontSize ?? 12, // Default size
      color: AppColor.white,
      fontWeight: fontWeight ?? FontWeight.w400,
    );
  }

  // Black Text Style
  static TextStyle black({double? fontSize, FontWeight? fontWeight}) {
    return GoogleFonts.poppins(
      fontSize: fontSize ?? 12, // Default size
      color: AppColor.black,
      fontWeight: fontWeight ?? FontWeight.w400,
    );
  }

  // Orange Text Style
  static TextStyle orange({double? fontSize, FontWeight? fontWeight}) {
    return GoogleFonts.poppins(
      fontSize: fontSize ?? 16,
      color: AppColor.customorange,
      fontWeight: fontWeight ?? FontWeight.w500,
    );
  }
}

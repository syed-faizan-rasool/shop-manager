import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_manager/res/commons/colors.dart';


class AppTextStyles {

  static final TextStyle grey = GoogleFonts.poppins(
    fontSize: 14,
    color: AppColor.customgrey,
    fontWeight: FontWeight.w700,
  );


  static final TextStyle white = GoogleFonts.poppins(
    fontSize: 12,
    color: AppColor.white,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle orange = GoogleFonts.poppins(
    fontSize: 16,
    color: AppColor.customorange,
    fontWeight: FontWeight.w500,
  );
}

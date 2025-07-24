import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart'; 

class TextStyles {
  static final TextStyle headline1 = GoogleFonts.nunito(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.jetBlack,
  );

  static final TextStyle headline2 = GoogleFonts.nunito(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.jetBlack,
  );

  static final TextStyle title = GoogleFonts.nunito(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.charcoalGray,
  );

  static final TextStyle subtitle = GoogleFonts.nunito(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.charcoalGray,
  );

  static final TextStyle body = GoogleFonts.nunito(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.charcoalGray,
  );

  static final TextStyle caption = GoogleFonts.nunito(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.cloudGray,
  );

  static final TextStyle button = GoogleFonts.nunito(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );

  static final TextStyle link = GoogleFonts.nunito(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.skyBlue,
    decoration: TextDecoration.underline,
  );

  static final TextStyle error = GoogleFonts.nunito(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: AppColors.errorRed,
  );
}

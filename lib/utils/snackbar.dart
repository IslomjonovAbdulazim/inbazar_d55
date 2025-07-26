import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'colors.dart';

void snackSuccess(String title, String message) {
  Get.snackbar(
    title,
    message,
    snackPosition: SnackPosition.TOP,
    margin: const EdgeInsets.all(12),
    borderRadius: 12,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    duration: const Duration(seconds: 3),
    icon: Icon(Icons.check_circle, color: AppColors.inbazarGreen),
    colorText: AppColors.inbazarGreen,
    overlayBlur: 1,
  );
}

void snackError(String title, String message) {
  Get.snackbar(
    title,
    message,
    snackPosition: SnackPosition.TOP,
    margin: const EdgeInsets.all(12),
    borderRadius: 12,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    duration: const Duration(seconds: 4),
    icon: Icon(Icons.error, color: AppColors.errorRed),
    colorText: AppColors.errorRed,
    overlayBlur: 1,
  );
}

void snackInfo(String title, String message) {
  Get.snackbar(
    title,
    message,
    snackPosition: SnackPosition.TOP,
    margin: const EdgeInsets.all(12),
    borderRadius: 12,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    duration: const Duration(seconds: 3),
    icon: Icon(Icons.info_outline, color: AppColors.skyBlue),
    colorText: AppColors.skyBlue,
    overlayBlur: 1,
  );
}

void snackWarning(String title, String message) {
  Get.snackbar(
    title,
    message,
    snackPosition: SnackPosition.TOP,
    margin: const EdgeInsets.all(12),
    borderRadius: 12,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    duration: const Duration(seconds: 4),
    icon: Icon(Icons.warning_amber_rounded, color: AppColors.accentYellow),
    colorText: AppColors.accentYellow,
    overlayBlur: 1,
  );
}

import 'package:get/get.dart';
import 'package:inbazar_d55555/pages/auth/onboarding_page.dart';
import 'package:inbazar_d55555/pages/home/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  static String token = "";
  static bool hasToken = false;

  Future<void> init() async {
    final db = await SharedPreferences.getInstance();
    token = db.getString("token") ?? "";
    hasToken = token.isNotEmpty;
  }

  Future<void> saveToken(String value) async {
    final db = await SharedPreferences.getInstance();
    await db.setString("token", value);
    token = value;
    hasToken = true;
    Get.offAll(HomePage());
  }

  Future<void> deleteToken() async {
    final db = await SharedPreferences.getInstance();
    await db.remove("token");
    token = "";
    hasToken = false;
    Get.offAll(OnboardingPage());
  }
}

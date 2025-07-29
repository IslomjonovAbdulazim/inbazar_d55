import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:inbazar_d55555/services/network_service.dart';
import 'package:inbazar_d55555/services/storage_service.dart';

class AuthProvider {
  static Future<bool> verifyOtp(
    String phone,
    String code,
  ) async {
    final body = jsonEncode({
      "phone_number": phone,
      "code": code,
    });
    final api = Uri.parse(NetworkService.verifyCode);
    final response = await http.post(
      api,
      headers: {
        "Content-Type": "application/json",
      },
      body: body,
    );
    if (response.statusCode == 200) {
      final token = jsonDecode(response.body)["access_token"] ?? "";
      await StorageService.saveToken(token);
      return true;
    } else {
      final err = jsonDecode(response.body)["detail"] ?? "Unknown Error";
      Get.closeAllSnackbars();
      Get.snackbar(err, "Please try again later");
      return false;
    }
  }


}

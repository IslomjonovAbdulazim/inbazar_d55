import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:inbazar_d55555/services/network_service.dart';

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

  }
}

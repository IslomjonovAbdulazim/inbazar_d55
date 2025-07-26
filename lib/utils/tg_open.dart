import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TelegramLauncher {
  // Your Telegram bot username
  static const String botUsername = 'inbazar_robot';

  static Future<void> openTelegramBot() async {
    final Uri appUri = Uri.parse('tg://resolve?domain=$botUsername');
    final Uri webUri = Uri.parse('https://t.me/$botUsername');

    // Try to launch Telegram app
    if (await canLaunchUrl(appUri)) {
      await launchUrl(appUri, mode: LaunchMode.externalApplication);
    } else {
      // Fallback to Telegram web
      if (await canLaunchUrl(webUri)) {
        await launchUrl(webUri, mode: LaunchMode.externalApplication);
      } else {
        // Optional: show error message
        debugPrint('Could not open Telegram bot via app or browser.');
      }
    }
  }
}

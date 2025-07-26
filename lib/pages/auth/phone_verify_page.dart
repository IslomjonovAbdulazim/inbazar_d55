import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inbazar_d55555/pages/auth/body_info_page.dart';
import 'package:inbazar_d55555/utils/tg_open.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../utils/buttons.dart';
import '../../utils/colors.dart';
import '../../utils/texts.dart';

class PhoneVerifyPage extends StatefulWidget {
  const PhoneVerifyPage({super.key});

  @override
  State<PhoneVerifyPage> createState() => _PhoneVerifyPageState();
}

class _PhoneVerifyPageState extends State<PhoneVerifyPage> {
  final controller = TextEditingController();
  final focus = FocusNode();
  bool isLoading = false;
  final mask = MaskTextInputFormatter(
    mask: "####",
    filter: {
      "#": RegExp(r'[0-9]'),
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(200),
                    child: Image.asset(
                      "assets/logo.png",
                      height: 150,
                      width: 150,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                "Tasdiqlash",
                style: TextStyles.headline1,
              ),
              Text(
                "Tasdiqlash kodini kiriting!",
                style: TextStyles.title,
              ),
              SizedBox(height: 10),
              TextField(
                controller: controller,
                focusNode: focus,
                style: TextStyles.title,
                inputFormatters: [mask],
                onTapOutside: (value) => focus.unfocus(),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: AppColors.cloudGray,
                  hintText: "Tasdiqlash kodi",
                  hintStyle: TextStyles.title,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text("Tasdiqlash kodi shu yerda", style: TextStyles.body),
                  Buttons.text(
                    onPressed: () {
                      TelegramLauncher.openTelegramBot();
                    },
                    text: "@inbazar_bot",
                  ),
                ],
              ),
              Spacer(),
              Buttons.primary(
                onPressed: () {
                  Get.to(BodyInfoPage());
                },
                text: "Davom etish",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

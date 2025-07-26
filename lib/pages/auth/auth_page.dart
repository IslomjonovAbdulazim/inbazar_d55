import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inbazar_d55555/pages/auth/body_info_page.dart';
import 'package:inbazar_d55555/pages/auth/phone_verify_page.dart';
import 'package:inbazar_d55555/utils/colors.dart';
import 'package:inbazar_d55555/utils/texts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../utils/buttons.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final controller = TextEditingController();
  final key = GlobalKey<FormState>();
  final focus = FocusNode();
  bool isLoading = false;
  final mask = MaskTextInputFormatter(
    mask: "(##) ###-##-##",
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
          child: Form(
            key: key,
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
                  "Kirish",
                  style: TextStyles.headline1,
                ),
                Text(
                  "Telefon raqaminginzi kiriting",
                  style: TextStyles.title,
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: controller,
                  focusNode: focus,
                  style: TextStyles.title,
                  inputFormatters: [mask],
                  onTapOutside: (value) => focus.unfocus(),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (mask.isFill() == false) {
                      return "Telefon raqamingizni kiriting!";
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    filled: true,
                    fillColor: AppColors.cloudGray,
                    hintText: "Telefon Raqam",
                    hintStyle: TextStyles.title,
                  ),
                ),
                Spacer(),
                Buttons.primary(
                  onPressed: () {
                    if (key.currentState!.validate()) {
                      Get.to(PhoneVerifyPage());
                    }
                  },
                  text: "Davom etish",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

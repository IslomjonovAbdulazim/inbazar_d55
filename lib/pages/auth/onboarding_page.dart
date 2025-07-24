import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inbazar_d55555/pages/auth/auth_page.dart';
import 'package:inbazar_d55555/utils/buttons.dart';
import 'package:inbazar_d55555/utils/colors.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Spacer(),
              CarouselSlider(
                items: [
                  Container(
                    color: Colors.red,
                    child: Column(
                      children: [
                        SizedBox(height: 400, width: 1000),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.red,
                    child: Column(
                      children: [
                        SizedBox(height: 400, width: 1000),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.red,
                    child: Column(
                      children: [
                        SizedBox(height: 400, width: 1000),
                      ],
                    ),
                  ),
                ],
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  aspectRatio: .8,
                ),
              ),
              Spacer(),
              Buttons.primary(
                onPressed: () {
                  Get.offAll(
                    AuthPage(),
                    transition: Transition.fade,
                  );
                },
                text: "Ro'yxatdan O'tish",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

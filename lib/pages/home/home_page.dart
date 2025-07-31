import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inbazar_d55555/pages/home/profile_page.dart';
import 'package:inbazar_d55555/utils/texts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          CupertinoButton(
            onPressed: () {
              Get.to(ProfilePage());
            },
            child: Icon(
              CupertinoIcons.person,
              size: 28,
            ),
          ),
          SizedBox(width: 8),
        ],
      ),
      body: Center(
        child: Text(
          "HomePage",
          style: TextStyles.headline1,
        ),
      ),
    );
  }
}

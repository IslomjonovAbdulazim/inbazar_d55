import 'package:flutter/material.dart';
import 'package:inbazar_d55555/models/auth_models.dart';
import 'package:inbazar_d55555/providers/auth_providers.dart';
import 'package:inbazar_d55555/services/storage_service.dart';
import 'package:inbazar_d55555/utils/colors.dart';
import 'package:inbazar_d55555/utils/texts.dart';

import '../../utils/buttons.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isLoading = false;
  UserModel? user;

  @override
  void initState() {
    load();
    super.initState();
  }

  void load() async {
    isLoading = true;
    setState(() {});
    user = await AuthProvider.getUser();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Profil",
          style: TextStyles.headline2,
        ),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : SafeArea(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    // h/w
                    Spacer(),
                    Buttons.outlined(
                      text: "Logout",
                      onPressed: () {
                        StorageService.deleteToken();
                      },
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}

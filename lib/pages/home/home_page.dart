import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inbazar_d55555/models/mock_data.dart';
import 'package:inbazar_d55555/models/product_model.dart';
import 'package:inbazar_d55555/pages/home/profile_page.dart';
import 'package:inbazar_d55555/pages/home/widgets/product_widget.dart';

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
      body: ListView(
        children: [
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: mockProducts.length,
            itemBuilder: (context, index) {
              final model = ProductModel.fromJson(mockProducts[index]);
              return ProductWidget(model: model);
            },
          ),
        ],
      ),
    );
  }
}

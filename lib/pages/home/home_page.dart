import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inbazar_d55555/models/mock_data.dart';
import 'package:inbazar_d55555/models/product_model.dart';
import 'package:inbazar_d55555/pages/home/profile_page.dart';
import 'package:inbazar_d55555/pages/home/widgets/product_widget.dart';
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            SizedBox(
              height: 50,
              child: ListView.builder(
                itemCount: mockCategories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final model = CategoryModel.fromJson(mockCategories[index]);
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: CupertinoButton(
                      color: Colors.grey.shade100,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      onPressed: () {},
                      child: Text(
                        model.title,
                        style: TextStyles.title,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
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
      ),
    );
  }
}

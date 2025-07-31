import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inbazar_d55555/models/product_model.dart';

import '../../models/mock_data.dart';
import 'widgets/product_widget.dart';

class CategoryPage extends StatefulWidget {
  final CategoryModel category;
  const CategoryPage({super.key, required this.category});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        centerTitle: true,
        title: Text(widget.category.title),
      ),
      body: SafeArea(
        child: GridView.builder(
          padding: EdgeInsets.all(20),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 10,
          ),
          itemCount: mockProducts.length,
          itemBuilder: (context, index) {
            final model = ProductModel.fromJson(mockProducts[index]);
            return CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              child: ProductWidget(model: model),
            );
          },
        ),
      ),
    );
  }
}

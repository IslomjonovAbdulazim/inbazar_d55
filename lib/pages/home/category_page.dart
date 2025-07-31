import 'package:flutter/material.dart';
import 'package:inbazar_d55555/models/product_model.dart';

class CategoryPage extends StatefulWidget {
  final CategoryModel category;
  const CategoryPage({super.key, required this.category});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

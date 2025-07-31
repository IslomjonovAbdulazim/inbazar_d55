import 'package:flutter/material.dart';
import 'package:inbazar_d55555/models/product_model.dart';
import 'package:inbazar_d55555/utils/texts.dart';

class ProductWidget extends StatelessWidget {
  final ProductModel model;

  const ProductWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        model.title,
        style: TextStyles.title,
      ),
    );
  }
}

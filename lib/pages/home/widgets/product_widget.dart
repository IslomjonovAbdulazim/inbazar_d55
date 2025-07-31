import 'package:flutter/material.dart';
import 'package:inbazar_d55555/models/product_model.dart';
import 'package:inbazar_d55555/utils/texts.dart';

class ProductWidget extends StatelessWidget {
  final ProductModel model;

  const ProductWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  model.image,
                ),
              ),
            ),
            Text(
              model.title,
              style: TextStyles.title,
              maxLines: 1,
            ),
            Text(
              "${model.price} so'm",
              style: TextStyles.subtitle,
            ),
          ],
        ),
      ),
    );
  }
}

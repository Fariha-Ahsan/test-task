import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'models/product.dart';


class ProductTile extends StatelessWidget {
  final ProductElement productElement;
  const ProductTile(this.productElement);

  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 2,
      child: Image.network(
        productElement.thumbnail,
        fit: BoxFit.cover, ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),


    );
  }
}
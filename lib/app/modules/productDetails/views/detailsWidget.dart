import 'package:e_shop/app/modules/home/model/productModel.dart';
import 'package:e_shop/app/modules/productDetails/controllers/product_details_controller.dart';
import 'package:e_shop/app/widgets/productDetailsRow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsWidget extends GetView<ProductDetailsController> {
  final ProductModel product;

  const DetailsWidget({this.product});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ProductDetailsRow(
            labels: ['Brand', 'SKU'],
            labelsText: ['${product.brand}', '${product.sku}']
        ),
        ProductDetailsRow(
            labels: ['CONDITIONS', 'MATERIAL'],
            labelsText: ['${product.condition}', '${product.material}']
        ),
        ProductDetailsRow(
            labels: ['CATEGORY', 'FITTING'],
            labelsText: ['${product.category}', '${product.fitting}']
        ),
      ],
    );
  }
}

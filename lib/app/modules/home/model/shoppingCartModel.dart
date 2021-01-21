import 'package:flutter/material.dart';

class ShoppingCart {
  final String productId;
  final String productName;
  final String size;
  final String color;
  int quantity;
  final double price;
  final String image;

  ShoppingCart(
      {@required this.productId,
      @required this.productName,
      @required this.size,
      @required this.color,
      @required this.quantity,
      @required this.price,
      @required this.image});

  // set incrementQuantity(int number) {
  //   quantity += number;
  // }
}

import 'package:flutter/material.dart';

class ProductModel {
  final List<String> images;
  final String productName;
  final double price;
  final int star;
  final String brand;
  final String sku;
  final String condition;
  final String material;
  final String category;
  final String fitting;
  final List<Color> allColors;
  final List<double> sizes;
  final List<Reviews> reviews;
  final String productId;

  ProductModel(
      {@required this.productId,
      this.images,
      @required this.productName,
      @required this.price,
      this.star,
      @required this.brand,
      this.sku,
      this.condition,
      this.material,
      @required this.category,
      this.fitting,
      this.allColors,
      this.sizes,
      this.reviews});
}

class Reviews {
  final int reviewStar;
  final String date;
  final String reviewName;
  final String comments;
  final List<String> reviewImages;

  Reviews(
      {this.reviewStar,
      this.date,
      this.reviewName,
      this.comments,
      this.reviewImages});
}

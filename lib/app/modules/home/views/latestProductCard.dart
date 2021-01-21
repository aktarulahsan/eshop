import 'package:e_shop/app/constant/appColor.dart';
import 'package:e_shop/app/constant/appTextStyle.dart';
import 'package:flutter/material.dart';

class LatestProductCard extends StatelessWidget {
  final String image;
  final String productName;
  final double price;

  const LatestProductCard(
      {Key key,
      @required this.image,
      @required this.productName,
      @required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(left: 14, top: 5, bottom: 5,),
      // width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.redAccent,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            child: Image.asset(image, fit: BoxFit.cover),
          ),
          SizedBox(height: 20),
          Text(productName,
              style: AppTextStyle.latestProductName),
          Text('\$$price',
              style: AppTextStyle.latestProductPrice),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

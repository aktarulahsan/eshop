import 'package:e_shop/app/constant/appColor.dart';
import 'package:flutter/material.dart';

class ProductDetailsRow extends StatelessWidget {
  final List<String> labels;
  final List<String> labelsText;

  const ProductDetailsRow({Key key, @required this.labels, @required this.labelsText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(labels[0].toUpperCase(), style: TextStyle(color: AppColor.textColor, fontWeight: FontWeight.w400, fontSize: 12)),
            Text(labelsText[0].toUpperCase(), style: TextStyle(color: AppColor.textColor, fontWeight: FontWeight.w500, fontSize: 14)),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(labels[1].toUpperCase(), style: TextStyle(color: AppColor.textColor, fontWeight: FontWeight.w400, fontSize: 12)),
            Text(labelsText[1].toUpperCase(), style: TextStyle(color: AppColor.textColor, fontWeight: FontWeight.w500, fontSize: 14)),
          ],
        ),
      ],
    );
  }
}

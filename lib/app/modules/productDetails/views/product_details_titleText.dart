
import 'package:e_shop/app/constant/appColor.dart';
import 'package:e_shop/app/modules/productDetails/controllers/product_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WidgetTitleButton extends GetView<ProductDetailsController> {
  final int  index;
  final String text;

  WidgetTitleButton({@required this.index, @required this.text});
  @override
  Widget build(BuildContext context) {
    return Obx(() =>
        InkWell(
          onTap: () => controller.changeWidget(index),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: controller.currentIndex.value == index ?  Colors.white : const Color(0xFFF5F6F8),
            ),
            child: Text(text,
                style: TextStyle(
                    color: controller.currentIndex.value == index ?  AppColor.activeColor : AppColor.textColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16)),
          ),
        )
    );
  }
}

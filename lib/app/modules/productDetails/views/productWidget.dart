import 'package:e_shop/app/constant/appColor.dart';
import 'package:e_shop/app/modules/productDetails/controllers/product_details_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductWidget extends GetView<ProductDetailsController> {
  final List<Color> allColors;
  final List<double> allSizes;

  const ProductWidget({this.allColors, this.allSizes});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('SELECT COLOR', style: TextStyle(fontWeight: FontWeight.w300)),
            SizedBox(height: 12),

            // Container(
            //   height: 50,
            //   child: ListView.builder(
            //     itemCount: 6,
            //     scrollDirection: Axis.horizontal,
            //     itemBuilder: (BuildContext context, int index){
            //     return Container(
            //       height: 50,
            //       width: 50,
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(100),
            //           color: Colors.black
            //       ),
            //     );
            //   },),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: allColors.map(
                (e) {
                  final int index = allColors.indexOf(e);
                  final Color textColor = e == Color(0xFFFFFFFF) ? Color(0xFF000000) : Color(0xFFFFFFFF);
                  return InkWell(
                    onTap: () => controller.changeColor(index),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100), color: e),
                      child: Obx(() =>
                          controller.selectedColorIndex.value == index
                              ? Icon(Icons.check, color:  textColor )
                              : Container()),
                    ),
                  );
                },
              ).toList(),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('SELECT SIZE (US)',
                style: TextStyle(fontWeight: FontWeight.w300)),
            SizedBox(height: 12),
            Container(
              height: 50,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: allSizes.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () => controller.selectedSizeIndex(index),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Container(
                        // padding: EdgeInsets.only(right: 10),
                        alignment: Alignment.center,
                        height: 50,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Obx(()=> Text('${allSizes[index]}', style: TextStyle(color: controller.selectedSizeIndex.value == index ? AppColor.activeColor :  AppColor.textColor))),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

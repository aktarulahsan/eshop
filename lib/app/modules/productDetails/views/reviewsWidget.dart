import 'package:e_shop/app/constant/appColor.dart';
import 'package:e_shop/app/modules/home/model/productModel.dart';
import 'package:e_shop/app/modules/productDetails/controllers/product_details_controller.dart';
import 'package:e_shop/app/widgets/smallWidgetes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReviewWidget extends GetView<ProductDetailsController> {
  final List<Reviews> reviews;

  const ReviewWidget({this.reviews});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 15),
      physics: BouncingScrollPhysics(),
      itemCount: reviews.length,
        itemBuilder: (BuildContext context, int index){
        final Reviews review = reviews[index];
      return Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 70, width: 70,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFB7E6E6),

                  ),
                  child: Text(controller.getShortName(review.reviewName), style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF85CBCB),fontSize: 22.0,)),
                ),
              ),
              SizedBox(width: 30),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        makeStar(2),
                        Text('${review.date}', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: AppColor.textColor)),
                      ],
                    ),
                    SizedBox(height: 5),
                    Text('${review.reviewName}', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: AppColor.textColor)),
                    SizedBox(height: 5),
                    Text('${review.comments}',style: TextStyle(fontSize: 14, color: AppColor.textColor)),
                    SizedBox(height: 5),
                    Container(
                      height: 50,
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: review.reviewImages.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) =>
                          Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: Container( child: Image.asset('${review.reviewImages[index]}'),),
                          ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}

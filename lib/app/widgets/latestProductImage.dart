import 'package:e_shop/app/constant/appColor.dart';
import 'package:e_shop/app/constant/appTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LatestProductImage extends StatelessWidget {
  final String cardText;
  final String cardImage;
  final String buttonText;
  final Function onTap;

  const LatestProductImage(
      {Key key,
      @required this.cardText,
      @required this.cardImage,
      @required this.buttonText,
      @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * .85,
      height: Get.height * .28,

      child: Stack(
        children: [
          Container(
            // height: Get.height * .28,
            // width: Get.width * 6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              // color: Colors.red,
            ),
            child: Image.asset(cardImage, fit: BoxFit.cover),
          ),
          Positioned(
            top: 30,
            left: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: Get.width * .4,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
                  child: Text(cardText,
                      style: AppTextStyle.imageSliderText),
                ),
                InkWell(
                  onTap: onTap,
                  // width: Get.width * .9,
                  child: Material(
                    elevation: 3.0,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Text(
                              buttonText.toUpperCase(),
                              style: TextStyle(color: AppColor.textColor),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: AppColor.activeColor,
                            ),
                            child: Icon(
                              Icons.chevron_right,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // BigButton
        ],
      ),
    );
  }
}

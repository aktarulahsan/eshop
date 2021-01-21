import 'package:animate_do/animate_do.dart';
import 'package:e_shop/app/constant/appColor.dart';
import 'package:e_shop/app/widgets/roundedButton.dart';
import 'package:e_shop/app/constant/appTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.bodyScaffold,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColor.bodyScaffold,
          elevation: 0,
          actions: [
            IconButton(
                icon: Icon(Icons.close, color: AppColor.activeColor, size: 30),
                onPressed: () => Get.back()),
          ],
        ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),

        width: Get.width,
        height: Get.height,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ElasticIn(
                    duration: Duration(seconds: 1),
                    child: Container(
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(Icons.check, color: AppColor.activeColor, size: 50,),
                    ),
                  ),
                ),

                Padding(
                  padding:const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text('Order Placed!', textAlign: TextAlign.center, style: AppTextStyle.successTitle),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text('Your order was placed successfully. For more details, check All My Orders page under Profile tab', textAlign: TextAlign.center, style: AppTextStyle.successPassage ),
                ),
                Container( padding: const EdgeInsets.symmetric(vertical: 8.0),width : Get.width * .5,child: RoundedButton(icon: Icons.chevron_right, iconColor: AppColor.activeColor, buttonText: 'My Orders', textColor: Colors.white, iconBG: Colors.white, elevation: 5, color: AppColor.activeColor)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

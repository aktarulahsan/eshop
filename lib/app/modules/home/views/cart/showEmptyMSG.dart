


import 'package:animate_do/animate_do.dart';
import 'package:e_shop/app/common_controllers/shopping_cart_controller.dart';
import 'package:e_shop/app/constant/appTextStyle.dart';
import 'package:e_shop/app/modules/home/model/shoppingCartModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

class ShowNoCartMSG extends GetView<ShoppingCartController> {

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: Get.height,
      width: Get.width,
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 10),
            margin: const EdgeInsets.all(15),
            // color: Colors.grey,
            child: Text('Cart',
                style: AppTextStyle.bigTitleBold),//TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: AppColor.textColor)
          ),
          Expanded(
            flex: 6,
            child: Container(
              // height: Get.height,
              // width: Get.width,
              margin: EdgeInsets.symmetric(horizontal: 25),
              // color: Colors.blueGrey,
             child: Center(
               child: ElasticIn(
                 duration: Duration(seconds: 1),
                 child: Container(
                   height: Get.height * .3,
                   width: Get.width * .75,
                   padding: const EdgeInsets.all(10),
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(15),
                     // border: Border.all(width: .5,color: Colors.grey) ,
                   ),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text('😌', style: TextStyle(fontSize: 50),),
                       Text('Current You Have No Item In The Cart', style:  AppTextStyle.bigTitleBold, textAlign: TextAlign.center,),
                     ],
                   ),
                 ),
               ),
             ),
            ),
          ),

        ],
      ),
    );
  }
}

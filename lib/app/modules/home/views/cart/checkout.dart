
import 'package:e_shop/app/constant/appColor.dart';
import 'package:e_shop/app/modules/home/controllers/home_controller.dart';
import 'package:e_shop/app/widgets/roundedButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_shop/app/modules/home/views/cart/success.dart';
import 'package:e_shop/app/constant/appTextStyle.dart';


// TextStyle(
// fontSize: 30,
// fontWeight: FontWeight.bold,
// color: AppColor.textColor)
class Checkout extends GetView<HomeController> {
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
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 10),
              margin: const EdgeInsets.all(15),
              // color: Colors.grey,
              child: Text('Checkout',
                  style: AppTextStyle.bigTitleBold),
            ),
            Expanded(
              flex: 6,
              child: Container(
                // height: Get.height,
                // width: Get.width,
                margin: EdgeInsets.symmetric(horizontal: 25),

                // color: Colors.blueGrey,
                // child: ListView.builder(
                //   physics: BouncingScrollPhysics(),
                //   itemCount: controller.shoppingCart.length,
                //   itemBuilder: (BuildContext context, int index) {
                //     final cart = controller.shoppingCart[index];
                //     return Padding(
                //       padding: const EdgeInsets.symmetric(vertical: 15.0),
                //       child: Row(
                //         children: [
                //           /**
                //            * cart image
                //            */
                //           Expanded(
                //             flex: 1,
                //             child: Container(
                //                 decoration: BoxDecoration(
                //                     borderRadius: BorderRadius.circular(100),
                //                     color: Colors.white),
                //                 child: Image.asset('${cart.image}')),
                //           ),
                //           Expanded(
                //             flex: 2,
                //             child:
                //             /**
                //              * cart info
                //              */
                //             Container(
                //               // color: Colors.grey,
                //               margin: const EdgeInsets.only(left: 10),
                //               child: Column(
                //                 mainAxisAlignment: MainAxisAlignment.center,
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   Text('${cart.productName}',
                //                       style: TextStyle(
                //                           color: AppColor.textColor,
                //                           fontSize: 15)),
                //                   Text('${cart.size}, ${cart.color}',
                //                       style: TextStyle(
                //                           color: AppColor.textColor,
                //                           fontSize: 15,
                //                           fontWeight: FontWeight.w300)),
                //                   Padding(
                //                     padding: const EdgeInsets.all(8.0),
                //                     child: Text('\$${cart.price}',
                //                         style: TextStyle(
                //                             color: AppColor.activeColor,
                //                             fontSize: 15)),
                //                   ),
                //
                //                   /***Stepper
                //                    *
                //                    */
                //                   Row(
                //                     mainAxisAlignment: MainAxisAlignment.start,
                //                     children: [
                //                       Container(
                //                         decoration: BoxDecoration(
                //                             borderRadius:
                //                             BorderRadius.circular(100),
                //                             color: AppColor.textDeactiveColor),
                //                         margin: const EdgeInsets.all(0),
                //                         padding: const EdgeInsets.all(0),
                //                         child: IconButton(
                //                           icon: Icon(Icons.remove),
                //                           onPressed: () {},
                //                         ),
                //                       ),
                //                       SizedBox(width: 10),
                //                       Text('${cart.quantity}',
                //                           style: TextStyle(
                //                               color: AppColor.textColor,
                //                               fontSize: 15)),
                //                       SizedBox(width: 10),
                //                       Container(
                //                         decoration: BoxDecoration(
                //                             borderRadius:
                //                             BorderRadius.circular(100),
                //                             color: AppColor.textDeactiveColor),
                //                         margin: const EdgeInsets.all(0),
                //                         padding: const EdgeInsets.all(0),
                //                         child: IconButton(
                //                           icon: Icon(Icons.add),
                //                           onPressed: () {},
                //                         ),
                //                       ),
                //                     ],
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //     );
                //   },
                //
                // ),
              ),
            ),
            SizedBox(height: 5),
            SizedBox(
                height: .5,
                child: Container(
                    color: Colors.grey,
                    margin: EdgeInsets.symmetric(horizontal: 25))),
            Expanded(
              flex: 1,
              child: Container(
                // color: Colors.grey,
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        // color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('TOTAL',
                                style: TextStyle(
                                    color: AppColor.textColor, fontSize: 10)),
                            Text('\$81.57',
                                style: TextStyle(
                                    color: AppColor.textColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                            Text('Free Domestic Shipping',
                                style: TextStyle(
                                    color: AppColor.textColor, fontSize: 12)),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        child: Container(
                          // color: Colors.grey,
                            child: RoundedButton(
                              onTap: () =>  Get.to(SuccessScreen()),
                              color: AppColor.activeColor,
                              textColor: const Color(0xFFFFFFFF),
                              buttonText: 'CHECKOUT',
                              iconColor: AppColor.activeColor,
                              iconBG: const Color(0xFFFFFFFF),
                              fontWeight: FontWeight.bold,
                              icon: Icons.chevron_right,
                            ))),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

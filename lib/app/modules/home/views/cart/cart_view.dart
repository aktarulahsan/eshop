import 'package:e_shop/app/constant/appColor.dart';
import 'package:e_shop/app/modules/home/controllers/home_controller.dart';
import 'package:e_shop/app/modules/home/views/cart/showEmptyMSG.dart';
import 'package:e_shop/app/widgets/customeBadge.dart';
import 'package:e_shop/app/widgets/roundedButton.dart';
import 'package:e_shop/app/constant/appTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cartBody.dart';
import 'checkout.dart';

class CartView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bodyScaffold,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColor.bodyScaffold,
        elevation: 0,
        actions: [
          CustomBadge(svgPath: 'assets/svg/Messages.svg', badgeString: '5'),
          CustomBadge(badgeIcon: Icons.notifications_none, badgeString: '10'),
        ],
      ),
      body: controller.shoppingCartController.numberItems() <= 0 ?  ShowNoCartMSG() :  CartBody()  ,
      // body: ShowNoCartMSG(),
    );
  }
}

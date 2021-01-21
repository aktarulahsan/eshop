import 'dart:ui';

import 'package:e_shop/app/constant/appColor.dart';
import 'package:e_shop/app/widgets/customListTile.dart';
import 'package:e_shop/app/widgets/customeBadge.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoreView extends GetView {

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
              child: Text('More', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: AppColor.textColor)),
            ),
            Expanded(
              flex: 4,
              child: Container(
                // height: Get.height,
                // width: Get.width,
                margin: EdgeInsets.symmetric(horizontal: 15),
                // color: Colors.blueGrey,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(15),
                          ),

                          child: Column(
                            children: [
                              CustomListTile(svgPath: 'assets/svg/list_components/shipping.svg', text:  'Shipping Address', onTap: (){}),
                              CustomListTile(svgPath: 'assets/svg/list_components/pending payment.svg', text:  'Pending Payment', onTap: (){}),
                              CustomListTile(svgPath: 'assets/svg/list_components/currency.svg', text:  'Currency', onTap: (){}),
                              CustomListTile(svgPath: 'assets/svg/list_components/language.svg', text:  'Language', onTap: (){}),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:  const EdgeInsets.symmetric(vertical: 15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              CustomListTile(svgPath: 'assets/svg/list_components/notifications.svg', text:  'Notification Settings', onTap: (){}),
                              CustomListTile(svgPath: 'assets/svg/list_components/privacy.svg', text:  'Privacy Policy', onTap: (){}),
                              CustomListTile(svgPath: 'assets/svg/list_components/faq.svg', text:  'Frequently Asked Questions', onTap: (){}),
                              CustomListTile(svgPath: 'assets/svg/list_components/legal.svg', text:  'Legal Information', onTap: (){}),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:  const EdgeInsets.symmetric(vertical: 15.0),
                        child: FlatButton(onPressed: (){}, child: Text('LOG OUT', style: TextStyle(fontSize: 15, color: AppColor.activeColor))),
                      ),
                    ],
                  ),
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}

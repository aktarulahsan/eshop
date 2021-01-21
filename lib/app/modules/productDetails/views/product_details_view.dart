import 'package:e_shop/app/common_controllers/shopping_cart_controller.dart';
import 'package:e_shop/app/constant/appColor.dart';
import 'package:e_shop/app/modules/home/model/shoppingCartModel.dart';
import 'package:e_shop/app/modules/productDetails/controllers/product_details_controller.dart';
import 'package:e_shop/app/modules/productDetails/views/productTitleButton.dart';
import 'package:e_shop/app/widgets/customeBadge.dart';
import 'package:e_shop/app/widgets/roundedButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

class ProductDetailsView extends GetView<ProductDetailsController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bodyScaffold,
      appBar: AppBar(
        // backgroundColor: const Color(0xFFFFFFFF),
        backgroundColor: AppColor.bodyScaffold,
        elevation: 0,
        title: Column(
          children: [
            Text('${controller.product.productName}',
                style: TextStyle(
                    color: AppColor.textColor,
                    fontWeight: FontWeight.w300,
                    fontSize: 15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('\$${controller.product.price}',
                    style: TextStyle(
                        color: AppColor.textColor,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold)),
                SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 7.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.0),
                    color: AppColor.activeColor,
                  ),
                  child: Text('★ ${controller.product.star}',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ],
        ),
        iconTheme: IconThemeData(color: AppColor.activeColor),
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: AppColor.activeColor),
            onPressed: () => Get.back(),
          ),
        ),
        actions: [
          Obx(()=>CustomBadge(badgeIcon: MaterialIcons.shopping_cart, badgeString: controller.numberOfItems())),
          SizedBox(width: 5),
        ],
        centerTitle: true,
      ),
      body: Container(
        width: Get.width,
        child: Column(
          children: [
            Expanded(
              flex: 5, //5
              child: Container(
                // height: Get.height * .3,
                color: Colors.grey.withOpacity(0.2),
                width: Get.width,
                child: Swiper(
                  itemCount: controller.product.images.length,
                  loop: false,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  pagination: SwiperPagination(
                      alignment: Alignment.topCenter,
                      builder: SwiperPagination.dots),
                  itemBuilder: (BuildContext context, int index) {
                    return Image.asset(
                      controller.product.images[index],
                    );
                  },
                ),
              ),
            ),
            /***
             * ? Title Buttons
             */
            Container(
              height: 60,
              width: Get.width,
              color: const Color(0xFFF5F6F8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  WidgetTitleButton(index: 0, text: 'Product'),
                  WidgetTitleButton(index: 1, text: 'Details'),
                  WidgetTitleButton(index: 2, text: 'Reviews'),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                // padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                color: const Color(0xFFF5F6F8),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 0.0, horizontal: 15.0),
                  // child: DetailsWidget(),
                  child: Obx(() => controller.currentWidget()),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Color(0x00000000),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: Get.width * .45,
                          child: RoundedButton(
                              elevation: 30,
                              onTap: () {},
                              icon: Icons.arrow_upward,
                              iconBG: Color(0xFF727C8E),
                              buttonText: 'SHARE THIS',
                              color: Colors.white,
                              iconColor: Colors.white,
                              textColor: AppColor.textColor)),
                      Container(
                          width: Get.width * .45,

                          child: RoundedButton(
                              elevation: 30,
                              onTap: () => controller.addIntoCart(),
                              icon: Icons.chevron_right,
                              iconBG: Colors.white,
                              buttonText: 'ADD TO CART',
                              color: AppColor.activeColor,
                              iconColor: AppColor.activeColor,
                              textColor: Colors.white)),
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

import 'package:e_shop/app/constant/appColor.dart';
import 'package:e_shop/app/constant/appTextStyle.dart';
import 'package:e_shop/app/modules/home/controllers/home_controller.dart';
import 'package:e_shop/app/modules/home/views/profile_view.dart';
import 'package:e_shop/app/modules/productDetails/controllers/product_details_controller.dart';
import 'package:e_shop/app/modules/productDetails/views/product_details_view.dart';
import 'package:e_shop/app/routes/app_pages.dart';
import 'package:e_shop/app/widgets/appBadgetSVG.dart';
import 'package:e_shop/app/widgets/circularButton.dart';
import 'package:e_shop/app/widgets/latestProductImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../model/productModel.dart';
import '../model/latestProductImageModel.dart';
import 'categories_view.dart';
import 'latestProductCard.dart';

class HomePageView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bodyScaffold,
      drawer: ProfileView(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: Get.width,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  padding:
                      EdgeInsets.only(top: 5, left: 15, right: 15, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(width: 20),
                      InkWell(
                        onTap: () {},
                        child: AppBadgeSVG(
                          height: 20,
                          width: 20,
                          svgPath: 'assets/svg/Messages.svg',
                          text: '5',
                          padding: 8.0,
                          bdgPadding: 3,
                        ),
                      ),
                      SizedBox(width: 20),
                      InkWell(
                        onTap: () {},
                        child: AppBadgeSVG(
                          height: 20,
                          width: 20,
                          svgPath: 'assets/svg/notifications.svg',
                          text: '10',
                          padding: 8.0,
                          bdgPadding: 2,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(top: 0, left: 25, right: 20, bottom: 10),
                  width: Get.width,
                  // color: Colors.grey,
                  child: Text('Categories',
                      style: AppTextStyle.bigTitleBold),
                ),
                Container(
                  height: Get.height * .13,
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Row(
                      children: [
                        CircularButton(
                          onTap: () {},
                          svgPath: 'assets/svg/apparel.svg',
                          buttonText: 'Apparel',
                        ),
                        CircularButton(
                          onTap: () {},
                          svgPath: 'assets/svg/Beauty.svg',
                          buttonText: 'Beauty',
                        ),
                        CircularButton(
                          onTap: () {},
                          svgPath: 'assets/svg/Shoes.svg',
                          buttonText: 'Shoes',
                        ),
                        CircularButton(
                          onTap: () => Get.to(CategoriesView()),
                          svgPath: 'assets/svg/see all.svg',
                          buttonText: 'See All',
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(top: 10, left: 25, right: 20, bottom: 10),
                  width: Get.width,
                  // color: Colors.grey,
                  child: Text('Latest',
                      style: AppTextStyle.bigTitleBold),
                ),
                Container(
                  height: Get.height * .28,
                  // width: Get.width * 0.8,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.latestProductImages.length,
                    itemBuilder: (BuildContext context, int index) {
                      LatestProductImageModel _card =
                          controller.latestProductImages[index];
                      return LatestProductImage(
                          cardImage: _card.image,
                          buttonText: "SEE MORE",
                          cardText: _card.text,
                          onTap: () {});
                    },
                  ),
                ),
                Container(
                  height: Get.height * .30,
                  // width: Get.width * 0.8,
                  // color: Colors.red,
                  margin: EdgeInsets.only(bottom: 5),
                  child: ListView.builder(
                    // padding: EdgeInsets.all(8.0) ,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.allProducts.length,
                    itemBuilder: (BuildContext context, int index) {
                      ProductModel product =
                          controller.allProducts[index];
                      return InkWell(
                        onTap: (){
                          Get.lazyPut(() => ProductDetailsController(product: product));
                          return Get.to(ProductDetailsView());
                        },
                        child: LatestProductCard(
                            image: product.images[0],
                            productName: product.productName,
                            price: product.price),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

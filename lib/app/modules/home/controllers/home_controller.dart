import 'package:e_shop/app/common_controllers/shopping_cart_controller.dart';
import 'package:e_shop/app/data/data.dart';
import 'package:e_shop/app/modules/home/model/categoryModel.dart';
import 'package:e_shop/app/modules/home/model/shoppingCartModel.dart';
import 'package:e_shop/app/modules/home/views/cart/cart_view.dart';
import 'package:e_shop/app/modules/home/views/home_page_view.dart';
import 'package:e_shop/app/modules/home/views/more_view.dart';
import 'package:e_shop/app/modules/home/views/profile_view.dart';
import 'package:e_shop/app/modules/home/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/productModel.dart';
import '../model/latestProductImageModel.dart';

class HomeController extends GetxController {

  final ShoppingCartController shoppingCartController = Get.find<ShoppingCartController>();
  final currentIndex = 0.obs;
  final currentCategory = 0.obs;

  final List<ShoppingCart> shoppingCart = allShoppingCart;
  final List<ProductModel> allProducts = allProduct;
  final List<LatestProductImageModel> latestProductImages = latestProductImage;
  final List<CategoryModel> allCategories = allCategory;
  final List<Widget> allPages = [
    HomePageView(),
    SearchView(),
    CartView(),
    ProfileView(),
    MoreView()
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void setCurrentIndex(int index) => currentIndex.value = index;
  void setCurrentCategory(int index) => currentCategory.value = index;

}

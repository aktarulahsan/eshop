import 'package:e_shop/app/common_controllers/shopping_cart_controller.dart';
import 'package:e_shop/app/data/data.dart';
import 'package:e_shop/app/modules/home/model/productModel.dart';
import 'package:e_shop/app/modules/productDetails/views/detailsWidget.dart';
import 'package:e_shop/app/modules/productDetails/views/productWidget.dart';
import 'package:e_shop/app/modules/productDetails/views/reviewsWidget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
class ProductDetailsController extends GetxController {

  final ShoppingCartController _shoppingCartController = Get.find<ShoppingCartController>();
  RxInt currentIndex = 1.obs;
  RxInt selectedColorIndex = 0.obs;
  RxInt selectedSizeIndex = 0.obs;
  final ProductModel product;
  // getProduct()=> product;
  List<Widget> detailsWidgetList;
  ProductDetailsController({this.product});
  Widget currentWidget() => detailsWidgetList[currentIndex.value];
  @override
  void onInit() {
    super.onInit();
    detailsWidgetList = [
      ProductWidget(allColors: product.allColors, allSizes: product.sizes),
      DetailsWidget(product: product),
      ReviewWidget(reviews: product.reviews),
    ];
  }
  @override
  void onReady() {
    super.onReady();
  }
  @override
  void onClose() {
  }


  void changeWidget(int index) => currentIndex.value = index;
  void changeColor(int index) => selectedColorIndex.value = index;
  void changeSize(int index) => selectedSizeIndex.value = index;
  getShortName(String name){
    final wordList = name.split(' ');
    String shortName = '';
    for(int i=0;i<wordList.length; i++){
      shortName+= wordList[i][0].toUpperCase();
      if(i>5) break;
    }
    return shortName;
  }

   addIntoCart(){
     _shoppingCartController.addTOCart(product: product, color: colorName(), size: getSize());
  }

  String colorName(){
    return  colorStringName[selectedColorIndex.value];
  }

  String getSize(){
    return  product.sizes[selectedSizeIndex.value].toString();
  }
  String numberOfItems()  => _shoppingCartController.numberItems().toString();
}

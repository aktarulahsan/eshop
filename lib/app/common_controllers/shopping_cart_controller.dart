import 'package:e_shop/app/modules/home/model/productModel.dart';
import 'package:e_shop/app/modules/home/model/shoppingCartModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShoppingCartController extends GetxController {
  RxMap<String, ShoppingCart> productInCart = <String, ShoppingCart>{}.obs;
  final RxDouble totalPrice = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {}

  @override
  void onClose() {}

  void addTOCart({ProductModel product, String size, String color}) {
    if (!isInTheCart(product.productId)) {
      ShoppingCart _cart = ShoppingCart(
        image: product.images[0],
        productId: product.productId,
        price: product.price,
        color: color,
        size: size,
        productName: product.productName,
        quantity: 1,
      );
      productInCart[product.productId] = _cart;
      totalPrice.value += _cart.price;
      Get.snackbar('Success', 'Item added to your cart', backgroundColor: Colors.greenAccent, icon: Icon(Icons.check, color: Colors.white));
    } else{
      Get.snackbar('Success', 'Item already added to your cart', backgroundColor: Colors.greenAccent, icon: Icon(Icons.check, color: Colors.white));
    }
  }

  bool isInTheCart(String productId) {
    if (productInCart.isNotEmpty) {
      for (var key in productInCart.keys) if (key == productId) return true;
    }
    return false;
  }

  void incrementItem(String productId) {
    // print(productInCart[productId].quantity);
    productInCart[productId].quantity++;
    totalPrice.value += productInCart[productId].price.roundToDouble();
    Get.forceAppUpdate();
  }

  void decrementItem(String productId) {
    if (productInCart[productId].quantity > 1) {
      productInCart[productId].quantity--;
      totalPrice.value -= productInCart[productId].price.roundToDouble();
      Get.forceAppUpdate();
    }
  }

  int numberItems() => productInCart.length;
  Widget getQuantityOfProduct(String key){
    return Text(productInCart[key].quantity.toString());
  }
}

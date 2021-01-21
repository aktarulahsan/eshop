import 'package:e_shop/app/common_controllers/shopping_cart_controller.dart';
import 'package:get/get.dart';
import 'package:e_shop/app/modules/home/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<ShoppingCartController>(
          () => ShoppingCartController(),
    );
  }
}

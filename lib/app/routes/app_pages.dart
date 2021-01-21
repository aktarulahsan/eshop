import 'package:e_shop/app/modules/authentication/views/authentication_view.dart';
import 'package:e_shop/app/modules/authentication/bindings/authentication_binding.dart';

import 'package:e_shop/app/modules/productDetails/bindings/product_details_binding.dart';
import 'package:e_shop/app/modules/productDetails/views/product_details_view.dart';
import 'package:e_shop/app/modules/home/views/home_view.dart';
import 'package:e_shop/app/modules/home/bindings/home_binding.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

class AppPages {
  
static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME, 
      page:()=> HomeView(), 
      binding: HomeBinding(),
    ),

    GetPage(
      name: Routes.PRODUCT_DETAILS, 
      page:()=> ProductDetailsView(), 
      binding: ProductDetailsBinding(),
    ),
    GetPage(
      name: Routes.AUTHENTICATION, 
      page:()=> AuthenticationView(), 
      binding: AuthenticationBinding(),
    ),
  ];
}
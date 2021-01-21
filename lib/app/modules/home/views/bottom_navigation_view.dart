 

import 'package:e_shop/app/common_controllers/shopping_cart_controller.dart';
import 'package:e_shop/app/constant/appColor.dart';
import 'package:e_shop/app/modules/home/controllers/home_controller.dart';
import 'package:e_shop/app/widgets/cartBadgeWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

class BottomNavigationView extends GetView<HomeController> {
  final ShoppingCartController _shoppingCartController =
      Get.find<ShoppingCartController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: controller.currentIndex.value,
        selectedItemColor: AppColor.activeColor,
        showUnselectedLabels: true,
        unselectedItemColor: AppColor.textActiveColor,
        unselectedLabelStyle: TextStyle(color: AppColor.textActiveColor),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (int index) {
          controller.setCurrentIndex(index);
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(MaterialIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(MaterialIcons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: CartBadge(
                badgeIcon: MaterialIcons.shopping_cart,
                badgeString: '${_shoppingCartController.numberItems()}'),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesome.user_o),
            // icon: Icon(SvgPicture.asset('')),
            // icon: SvgPicture.asset('assets/svg/Profile.svg'),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(MaterialIcons.menu),
            label: 'More',
          ),
        ],
      ),
    );
  }
}

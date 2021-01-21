
import 'package:e_shop/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bottom_navigation_view.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.allPages[controller.currentIndex.value]),
      bottomNavigationBar: BottomNavigationView(),
    );
  }
}

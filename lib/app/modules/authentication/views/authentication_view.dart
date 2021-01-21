import 'package:e_shop/app/constant/appColor.dart';
import 'package:e_shop/app/modules/authentication/controllers/authentication_controller.dart';
import 'package:e_shop/app/modules/authentication/views/login/login_view.dart';
import 'package:e_shop/app/modules/authentication/views/widgets/titlesWidget.dart';
import 'package:e_shop/app/widgets/bigButton.dart';
import 'package:e_shop/app/widgets/inputBoxDecoration.dart';
import 'package:e_shop/app/widgets/inputField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthenticationView extends GetView<AuthenticationController> {
  final double height = Get.height;
  final double width = Get.width;

  @override
  Widget build(BuildContext context) {
    List<Widget> l (){
      return [Text('hi'), Text('SHiri')];
    }
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: width,
          height: height,
          color: AppColor.bgColor,
          child: Column(
            children: [
              TitlesWidget(),
              Obx(()=>controller.getBodyWidget()),
              // Spacer(),
              Obx(()=>controller.addBottomText()),
              // Spacer(),
            ],
        ),
      ),
    ),
    );
  }
}

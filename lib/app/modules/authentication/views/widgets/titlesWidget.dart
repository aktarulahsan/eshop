import 'package:e_shop/app/modules/authentication/controllers/authentication_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TitlesWidget extends GetView<AuthenticationController> {
  const TitlesWidget({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Container(
      height: Get.height * .1,
      width: Get.width * .8,
      // margin: EdgeInsets.only(left: 30),
      child: ListView.builder(
        itemCount: controller.authPages.length,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          // print(index);
          return Obx(()=>TextButton(
              child:
              Text(controller.authPages[index], style: controller.textStyle(index)),
              onPressed: () { controller.makeActivePage(index); controller.clearAllTextEditingField();}));
        },
      ),
    );
  }
}

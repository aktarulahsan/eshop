
import 'package:e_shop/app/constant/appColor.dart';
import 'package:e_shop/app/modules/home/controllers/home_controller.dart';
import 'package:e_shop/app/modules/home/model/categoryModel.dart';
import 'package:e_shop/app/modules/home/views/subCategoriesWidget.dart';
import 'package:e_shop/app/widgets/circularButton.dart';
 
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesView extends GetView<HomeController> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bodyScaffold,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColor.bodyScaffold,
        elevation: 0,
        actions: [
          IconButton(
              icon: Icon(Icons.close, color: AppColor.activeColor, size: 30),
              onPressed: () => Get.back()),
        ],
      ),
      body: Container(
        // color: Colors.grey,
        width: Get.width,
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'All Categories',
              style: TextStyle(
                  color: AppColor.textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
           Expanded(
             child: Container(
               // color: Colors.grey,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Expanded(
                     flex: 1,
                     child: ListView.builder(
                         physics: BouncingScrollPhysics(),
                         itemCount: controller.allCategories.length,
                         itemBuilder: (BuildContext context, int index){
                           final CategoryModel category =  controller.allCategories[index];
                           return Obx(()=>CircularButton(
                             onTap: () => controller.setCurrentCategory(index),
                             svgPath: category.categoryImage,
                             buttonText: category.categoryName,
                             fontSize: 15,
                             margin: 0.0,
                             textColor: index == controller.currentCategory.value ? AppColor.activeColor : AppColor.textColor,
                           ));
                         }
                     ),
                   ),
                   Expanded(
                     flex: 3,
                     child: Obx(()=> SubCategoriesWidget(subCategories: controller.allCategories[controller.currentCategory.value].subCategories,onTap: (){})),
                   ),
                 ],
               ),
             )),

          ],
        ),
      ),
    );
  }
}

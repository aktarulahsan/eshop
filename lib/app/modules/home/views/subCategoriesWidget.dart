import 'package:animate_do/animate_do.dart';
import 'package:e_shop/app/constant/appColor.dart';
import 'package:e_shop/app/modules/home/controllers/home_controller.dart';
import 'package:e_shop/app/modules/home/model/categoryModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubCategoriesWidget extends GetView<HomeController> {
  final List<SubCategoryModel> subCategories;
  final Function onTap;

  const SubCategoriesWidget({Key key, this.subCategories, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SlideInRight(
        from: 250,
        duration: Duration(milliseconds: 300),
      child: ListView.builder(
          padding: const EdgeInsets.only(top: 30),
          physics: BouncingScrollPhysics(),
          itemCount: subCategories.length, // this field will be category sub-list index
          itemBuilder: (BuildContext context, int index){
            final SubCategoryModel subCategory =  subCategories[index];

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${subCategory.subCategoryName}', style:TextStyle(fontSize: 12, color: AppColor.textColor)),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  child: Container(
                    // margin: const EdgeInsets.all(8.0),
                    // color: Colors.red,
                    // padding: const EdgeInsets.only(bottom:20.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // color: Colors.red,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    // height: 100,
                    child: Container(
                      // color: Colors.red,
                      // padding: const EdgeInsets.only(bottom:20.0),
                      margin: const EdgeInsets.all(10.0),
                      child: Column(
                        children: subCategory.subCategoriesTitle.map((subCategoryTitle) =>
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('$subCategoryTitle', style:TextStyle(fontSize: 15, color: AppColor.textColor)),
                                  Container(
                                    padding: const EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFE3E5E8),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: InkWell(child: Icon(Icons.chevron_right_outlined, color: AppColor.textColor, size: 15), onTap: onTap),
                                  ),
                                ],
                              ),
                            ),
                        ).toList(),

                      ),
                    ),
                  ),
                ),
                if( index != subCategories.length -1) Padding(
                  padding: const EdgeInsets.only(top: 14, bottom: 30),
                  child: SizedBox(height: .5, child: Container(color: const Color(0xFF727C8E))),
                ),
              ],
            );
          }
      ),
    );
  }
}

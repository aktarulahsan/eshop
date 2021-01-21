import 'package:e_shop/app/constant/appColor.dart';
import 'package:e_shop/app/widgets/customeBadge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart'; 

class PdAppBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFFFFFFF),
      elevation: 0,
      title: Text('Faux Sued Ankle Boots',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300)),
      iconTheme: IconThemeData(color: AppColor.activeColor),
      leading: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: IconButton(icon: Icon(Icons.arrow_back_ios, color: AppColor.activeColor), onPressed: ()=> Get.back(),),
      ),
      actions: [
        CustomBadge(badgeIcon: MaterialIcons.shopping_cart, badgeString: '7'),
        SizedBox(width: 5),
      ],
      centerTitle: true,
    );
  }
}
  
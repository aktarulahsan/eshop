import 'package:e_shop/app/constant/appColor.dart';
import 'package:e_shop/app/widgets/customListTile.dart';
import 'package:e_shop/app/widgets/customeBadge.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileView extends GetView {
  final Color bgColor = const Color(0xFFF5F6F8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: bgColor,
        elevation: 0,
        actions: [
          CustomBadge(svgPath: 'assets/svg/Messages.svg', badgeString: '5'),
          CustomBadge(badgeIcon: Icons.notifications_none, badgeString: '10'),
        ],
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.all(15),
                // color: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100)),
                          child: Image.asset('assets/png/photo.png'),
                        )),
                    Expanded(
                        flex: 2,
                        child: Container(

                          // color: Colors.white,
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Jane Doe',
                                  style: TextStyle(
                                      color: AppColor.textColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30)),
                              Text('janedoe123@gamil.com',
                                  style: TextStyle(
                                      color: AppColor.textColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15)),
                              FittedBox(
                                fit: BoxFit.fitHeight,
                                child: OutlineButton(
                                  child: Text('EDIT PROFILE'),
                                  onPressed: () {},
                                  highlightedBorderColor: AppColor.activeColor,
                                  textColor: AppColor.textColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                // height: Get.height,
                // width: Get.width,
                margin: EdgeInsets.symmetric(horizontal: 15),
                // color: Colors.blueGrey,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(15),
                          ),

                          child: Column(
                            children: [
                              CustomListTile(svgPath: 'assets/svg/list_components/all order.svg', text:  'All My Orders', onTap: (){}),
                              CustomListTile(svgPath: 'assets/svg/list_components/pending shipments.svg', text:  'Pending Shipments', onTap: (){}),
                              CustomListTile(svgPath: 'assets/svg/list_components/pending payment.svg', text:  'Pending Payment', onTap: (){}),
                              CustomListTile(svgPath: 'assets/svg/list_components/finished.svg', text:  'Finished Order', onTap: (){}),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:  const EdgeInsets.only(bottom: 15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              CustomListTile(svgPath: 'assets/svg/list_components/invite.svg', text:  'Invite Friends', onTap: (){}),
                              CustomListTile(svgPath: 'assets/svg/list_components/support.svg', text:  'Customer Support', onTap: (){}),
                              CustomListTile(svgPath: 'assets/svg/list_components/rate.svg', text:  'Rate Our App', onTap: (){}),
                              CustomListTile(svgPath: 'assets/svg/list_components/suggest.svg', text:  'Make a Suggestion', onTap: (){}),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // child: ListView(
                //     physics: BouncingScrollPhysics(),
                //     children: [
                //       Expanded(flex: 1, child: Container(color: Colors.red)),
                //       Expanded(flex: 1, child: Container(color: Colors.red)),
                //     ],
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:e_shop/app/constant/appTextStyle.dart';
import 'package:e_shop/app/modules/authentication/controllers/authentication_controller.dart';
import 'package:e_shop/app/widgets/bigButton.dart';
import 'package:e_shop/app/widgets/inputBoxDecoration.dart';
import 'package:e_shop/app/widgets/inputField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotView extends GetView<AuthenticationController> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Expanded(
        // color: Colors.grey,
        child: FadeInUp(
          duration: Duration(milliseconds: 200),
          from: 100,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  // color:Colors.red,
                  // width: Get.width * .65,
                  margin: const EdgeInsets.all(22.0),
                  child: Text(
                    'Enter the email address you used to create your account and we will email you a link to reset your password',
                    textAlign: TextAlign.center,
                    style: AppTextStyle.authForgotPasswordTitleTextStyle,
                  ),
                ),
                Container(
                  width: Get.width,
                  margin: const EdgeInsets.all(20.0),
                  // height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color(0xFFFFFFFF),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InputBox(
                        iconPath: 'assets/svg/001-mail.svg',
                        child: TextInputField(
                          label: 'Email',
                          controller: controller.email,
                          validation: (String email) {
                            if(!GetUtils.isEmail(email)) return 'Invalid Email';
                            else return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: Get.width * .9,
                  child: BigButton(
                    buttonText: 'SEND EMAIL',
                    onTap: () {
                      if(_formKey.currentState.validate()){
                        print('ok');
                      } else {print('not ok');}
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

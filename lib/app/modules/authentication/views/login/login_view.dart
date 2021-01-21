import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:e_shop/app/constant/appTextStyle.dart';
import 'package:e_shop/app/modules/authentication/controllers/authentication_controller.dart';
import 'package:e_shop/app/widgets/bigButton.dart';
import 'package:e_shop/app/widgets/inputBoxDecoration.dart';
import 'package:e_shop/app/widgets/inputField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends GetView<AuthenticationController> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Expanded(
        child: FadeInLeft(
          duration: Duration(milliseconds: 200),
          from: 100,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
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
                        iconPath: 'assets/svg/Profile.svg',
                        child: TextInputField(
                          label: 'USER NAME / Email',
                          validation: (String email) {
                            if (email.isEmpty)
                              return 'Please enter user name or email';
                            else if (!GetUtils.isEmail(email)) {
                              if (email.length < 6)
                                return 'Invalid Email address';
                            } else
                              return null;
                          },
                          controller: controller.email,
                        ),
                      ),
                      InputBox(
                        iconPath: 'assets/svg/002-password.svg',
                        child: TextInputField(
                          label: 'PASSWORD',
                          validation: (String password) {
                            if (password.trim().isEmpty)
                              return 'Password could not be empty';
                            else if (password.trim().length < 6)
                              return 'Password could not be less then 6 character';
                            else
                              return null;
                          },
                          controller: controller.password,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: Get.width * .9,
                  child: BigButton(
                    buttonText: 'Log IN',
                    onTap: () {
                      if(_formKey.currentState.validate()){
                        print('ok');
                      } else {print('not ok');}
                    },
                  ),
                ),
                // Spacer(),
                SizedBox(height: 30),
                // loginBottomText(),
                // Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget loginBottomText() {
  return Container(
    // color:Colors.red,
    margin: const EdgeInsets.only(left: 20, right: 20, bottom: 50),
    child: FadeInUp(
      duration: Duration(milliseconds: 400),
      // from: 100,
      child: Column(
        children: [
          Text('By creating an account, you agree to our ',
              textAlign: TextAlign.center,
              style: AppTextStyle.authBottomTextStyle),
          SizedBox(height: 5),
          InkWell(
            child: Text(
              'create a new account.',
              textAlign: TextAlign.center,
              style: AppTextStyle.authBottomTextActiveStyle,
            ),
            onTap: () {},
          ),
        ],
      ),
    ),
  );
}

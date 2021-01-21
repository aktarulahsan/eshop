import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:e_shop/app/constant/appTextStyle.dart';
import 'package:e_shop/app/modules/authentication/controllers/authentication_controller.dart';
import 'package:e_shop/app/widgets/bigButton.dart';
import 'package:e_shop/app/widgets/inputBoxDecoration.dart';
import 'package:e_shop/app/widgets/inputField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpView extends GetView<AuthenticationController> {
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Expanded(
        child: FadeInRight(
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
                        iconPath: 'assets/svg/001-mail.svg',
                        child: TextInputField(
                          label: 'Email',
                          validation: (email) {
                            if(!GetUtils.isEmail(email)) return 'Invalid Email';
                            else return null;
                          },
                          controller: controller.email,
                        ),
                      ),
                      InputBox(
                        iconPath: 'assets/svg/Profile.svg',
                        child: TextInputField(
                          label: 'USER NAME',
                          validation: (String userName) {
                            if(userName.trim().isEmpty) return 'User name could not be empty';
                            else if(userName.trim().length<6) return 'User name could not be less then 6 character';
                            else return null;
                          },
                          controller: controller.userName,
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

                      InputBox(
                        iconPath: 'assets/svg/002-password.svg',
                        child: TextInputField(
                          label: 'CONFIRM PASSWORD',
                          validation: (String password) {
                            if(password.trim().isEmpty) return 'Password could not be empty';
                            else if(password.trim().length<6) return 'Password could not be less then 6 character';
                            else return null;
                          },
                          controller: controller.confirmPassword,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: Get.width * .9,
                  child: BigButton(
                    buttonText: 'SIGN IN',
                    onTap: () {
                      if(_formKey.currentState.validate()){
                        controller.doSignUp();
                      }
                      // else controller.doSignUp();
                    },
                  ),
                ),
                // Spacer(),
                SizedBox(height: 30),
                // signUpBottomText(),
                // Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget signUpBottomText() {
  return Container(
    // color:Colors.red,
    width: Get.width,
    margin: const EdgeInsets.only(left: 20, right: 20, bottom: 50),
    child: FadeInUp(
      duration: Duration(milliseconds: 400),
      // from: 100,
      child: Column(
        children: [
          Text('By creating an account, you agree to our Terms of',
              textAlign: TextAlign.center,
              style: AppTextStyle.authBottomTextStyle),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Text(
                  'Service ',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.authBottomTextActiveStyle,
                ),
                onTap: () {},
              ),
              Text('and ',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.authBottomTextStyle),
              InkWell(
                child: Text('Privacy Policy',
                    textAlign: TextAlign.center,
                    style: AppTextStyle.authBottomTextActiveStyle),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

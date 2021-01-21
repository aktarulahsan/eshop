

import 'package:e_shop/app/constant/appColor.dart';
import 'package:flutter/material.dart';

class AppTextStyle{
  AppTextStyle._();

  static final TextStyle signupStyle = TextStyle(
    fontSize: 30.0,
    color: AppColor.textColor,
  );
  static final TextStyle loginStyle = TextStyle(
    fontSize: 30.0,
    color: AppColor.deactiveTextColor,
  );
  static final TextStyle bigTitleBold = TextStyle(
    fontSize: 30.0,
    color: AppColor.textColor,
    fontFamily: 'Neusa Bold',
  );
  static final TextStyle circularButtonText = TextStyle(
    fontSize: 20.0,
    color: AppColor.textColor,
    fontFamily: 'Neusa Medium',
  );
  static final TextStyle imageSliderText = TextStyle(
    fontSize: 18.0,
    color: Colors.white,
    fontFamily: 'Neusa Light',
  );
  static final TextStyle latestProductName = TextStyle(
    fontSize: 18.0,
    color: AppColor.textColor,
    fontFamily: 'Neusa Medium',
  );
  static final TextStyle latestProductPrice = TextStyle(
    fontSize: 15.0,
    color: AppColor.textColor,
    fontFamily: 'Neusa Bold',
  );
  static final TextStyle successTitle = TextStyle(
    fontSize: 30.0,
    color: AppColor.textColor,
    fontFamily: 'Neusa Regular',
  );
  static final TextStyle successPassage = TextStyle(
    fontSize: 19.0,//12
    color: AppColor.textColor,
    fontFamily: 'Neusa Regular',
  );
  // static final TextStyle roundedButton = TextStyle(
  //   fontSize: 15.0,//12
  //   color: Colors.white,
  //   fontFamily: 'Neusa Bold',
  //   wordSpacing: 3,
  // );
  static TextStyle  roundedButton(textColor){
    return TextStyle(
          fontSize: 15.0,//12
          color: textColor,
          fontFamily: 'Neusa Bold',
          wordSpacing: 3,
    );
  }
  static final TextStyle authActivePageTextStyle = TextStyle(
    fontSize: 30.0,
    color: AppColor.textColor,
    fontFamily: 'Neusa Bold',
  );
  static final TextStyle authDeactivePageTextStyle = TextStyle(
    fontSize: 30.0,
    color: AppColor.deactiveTextColor,
    fontFamily: 'Neusa Bold',
  );
  static final TextStyle authForgotPasswordTitleTextStyle = TextStyle(
    fontSize: 16.0,
    color: AppColor.textActiveColor,
    fontFamily: 'Neusa Medium',//Light
  );
  static final TextStyle authBottomTextStyle = TextStyle(
    fontSize: 16.0,
    color: AppColor.textActiveColor,
    wordSpacing: 4,
    fontFamily: 'Neusa Medium',//Light
  );
  static final TextStyle authBottomTextActiveStyle = TextStyle(
    fontSize: 16.0,
    color: AppColor.activeColor,
    wordSpacing: 4,
    fontFamily: 'Neusa Medium',//Light
  );
  static final TextStyle  badgeTextStyle = TextStyle(
    fontSize: 15.0,
    color: Colors.white,
    wordSpacing: 4,
    fontFamily: 'Neusa Bold',
  );
}
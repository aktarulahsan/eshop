import 'package:e_shop/app/constant/appTextStyle.dart';
import 'package:e_shop/app/modules/authentication/views/forgot/forgot_view.dart';
import 'package:e_shop/app/modules/authentication/views/login/login_view.dart';
import 'package:e_shop/app/modules/authentication/views/sign_up/signup_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthenticationController extends GetxController {

  final TextEditingController userName = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();

  final currentAuthPage = 0.obs;
  RxList<String> authPages;
  final List<Widget> authenticationsViews = [
    LoginView(),
  ];
  @override
  void onInit() {
    super.onInit();
    authPages = ['Sign Up', 'Login', 'Forgot Password'].obs;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    clearAllTextEditingField();
    disposeAllTextEditingField();
  }

  void changeCurrentAuthPage(index) => currentAuthPage.value = index;
  TextStyle textStyle(int index){
    return index == 0 ? AppTextStyle.authActivePageTextStyle : AppTextStyle.authDeactivePageTextStyle;
  }

  void makeActivePage(int index){

    String page = authPages[index];
    List<String> _listOfPages = [];
    if(page == 'Sign Up') _listOfPages =  ['Sign Up', 'Login', 'Forgot Password'];
    if(page == 'Login') _listOfPages = ['Login', 'Forgot Password', 'Sign Up'];
    if(page == 'Forgot Password') _listOfPages = ['Forgot Password', 'Login','Sign Up'];
    for(int i =0; i<authPages.length; i++){
      authPages[i] = _listOfPages[i];
    }

  }

  Widget getBodyWidget(){
      if( authPages[0] == 'Sign Up') return SignUpView();
      else if(authPages[0] == 'Login') return LoginView();
      return ForgotView();
  }
  Widget addBottomText(){
    Widget bottomText = ( authPages[0] == 'Sign Up') ? signUpBottomText() : loginBottomText();
    return authPages[0] != 'Forgot Password' ? bottomText : Container();
  }
  clearAllTextEditingField(){
    userName.clear();
    email.clear();
    password.clear();
    confirmPassword.clear();
  }
  disposeAllTextEditingField(){
    userName.dispose();
    email.dispose();
    password.dispose();
    confirmPassword.dispose();
  }

  doSignUp(){
    if(password.text != confirmPassword.text){
      Get.snackbar("Error Occurred While Sign Up", 'Password does not match',backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.TOP,
          colorText: Colors.white,
          icon: Icon(Icons.error_outline, color: Colors.white),
      );
    }
  }
  doLogin(){

  }
  resetPassword(){

  }

}

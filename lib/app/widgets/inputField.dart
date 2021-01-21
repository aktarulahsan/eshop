import 'package:e_shop/app/constant/appColor.dart';
import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final String label;
  final Function validation;
  final String hintText;
  final TextEditingController controller;
  const TextInputField({Key key, @required this.label, @required this.validation, this.hintText, @required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColor.activeColor,
      controller: controller,
      decoration: InputDecoration(
        border: InputBorder.none,
        labelText: label.toUpperCase(),
        labelStyle: TextStyle(color: AppColor.textColor),
        hintText: hintText,
      ),
      validator: validation,
    );
  }
}

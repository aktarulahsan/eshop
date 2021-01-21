import 'package:e_shop/app/constant/appColor.dart';
import 'package:flutter/material.dart';


class BigButton extends StatelessWidget {
  final String buttonText;
  final Function onTap;
  const BigButton({Key key, @required this.buttonText, @required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      // width: Get.width * .9,
      child: Material(
        elevation: 3.0,
        color: AppColor.buttonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: Container(
          height: 30.0,
          margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Spacer(),
              Text(
                buttonText.toUpperCase(),
                style: TextStyle(
                    color: const Color(0xFFFFFFFF),
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
              CircleAvatar(
                backgroundColor: const Color(0xFFFFFFFF),
                child: Icon(
                  Icons.chevron_right,
                  color: AppColor.buttonColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

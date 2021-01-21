import 'package:flutter/material.dart';
import 'package:e_shop/app/constant/appTextStyle.dart';
class RoundedButton extends StatelessWidget {
  final String buttonText;
  final Function onTap;
  final IconData icon;
  final Color iconColor;
  final Color iconBG;
  final Color color;
  final Color textColor;
  final double elevation;
  final FontWeight fontWeight;

  const RoundedButton({Key key, this.buttonText, this.onTap, this.icon, this.iconColor, this.iconBG, this.color, this.textColor, this.elevation, this.fontWeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      // width: Get.width * .9,
      child: Material(
        elevation: elevation ?? 3.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: Container(
          margin: const EdgeInsets.symmetric(
              vertical: 10.0, horizontal: 8),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // SizedBox(width: 10),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Text(
                  buttonText.toUpperCase(),
                  style: AppTextStyle.roundedButton(textColor),
                ),
              ),
              // SizedBox(width: 10),
              Spacer(),
              Container(
                padding: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: iconBG,
                ),
                child: Icon(
                  icon,
                  color: iconColor,
                ),
              ),
              // SizedBox(width: 10),

            ],
          ),
        ),
      ),
    );
  }
}

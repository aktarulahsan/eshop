import 'package:e_shop/app/constant/appColor.dart';
import 'package:e_shop/app/constant/appTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CircularButton extends StatelessWidget {
  final String buttonText;
  final Function onTap;
  final String svgPath;
  final double fontSize;
  final Color textColor;
  final double margin;

  const CircularButton(
      {Key key,
      @required this.buttonText,
      @required this.onTap,
      @required this.svgPath, this.margin,
      this.fontSize,
      this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      // child: Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     SvgPicture.asset(svgPath),
      //     Text(buttonText, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20)),
      //   ],
      // ),
      child: Container(
        // color: Colors.indigo,
        margin: EdgeInsets.all(margin ?? 5.0),
        height: 120,
        width: 120,
        child: Stack(
          children: [
            SvgPicture.asset(svgPath, height: 200, width: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(buttonText,
                      style: AppTextStyle.circularButtonText),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

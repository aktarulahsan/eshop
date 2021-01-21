import 'package:e_shop/app/constant/appColor.dart';
import 'package:e_shop/app/constant/appTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBadge extends StatelessWidget {
  final IconData badgeIcon;
  final String badgeString;
  final String svgPath;

  const CustomBadge(
      {Key key, this.badgeIcon, @required this.badgeString, this.svgPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget svgIcon(){
      return Container(
        // color: Colors.black54,
        alignment: Alignment.center,
        width: 55,//65
        height: 40,//50
          child: Container(
              constraints: BoxConstraints(
                // maxHeight: 10, maxWidth: 30
              ), child: FittedBox(fit: BoxFit.fitHeight, child: SvgPicture.asset(svgPath, color: Colors.grey, ))),
      );
    }
    Widget icon(){
      return Container(
          width: 55,//65
          height: 40,//50
          child: Icon(badgeIcon, color: Colors.grey, size: 30,),
      );
    }
    return Stack(
      children: [
        // Container(
        //   width: 55,
        //   height: 50,
        //   child: badgeIcon == null ? svgIcon()  :  icon(),
        // ),
        badgeIcon == null ? svgIcon()  :  icon(),
        Positioned(
          bottom: 10,
          left:  badgeIcon == null ? 5 : 0,
          child: Container(
            alignment: Alignment.center,
            constraints: BoxConstraints(
              maxWidth: 28,
              maxHeight: 20,
            ),
            // padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0, ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: AppColor.activeColor,
            ),
            child: FittedBox(fit: BoxFit.fitWidth, child: Text(badgeString, style: AppTextStyle.badgeTextStyle)),
          ),
        ),
      ],
    );
  }
}

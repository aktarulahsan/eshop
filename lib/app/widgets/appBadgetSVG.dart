import 'package:badges/badges.dart';
import 'package:e_shop/app/constant/appColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBadgeSVG extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final String svgPath;
  final double padding;
  final double bdgPadding;
  const AppBadgeSVG({Key key, this.text, this.width, this.height, this.svgPath, this.padding, this.bdgPadding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: Badge(
        shape: BadgeShape.square,
        elevation: 8,
        padding: EdgeInsets.all(bdgPadding),
        borderRadius: BorderRadius.circular(8),
        position: BadgePosition.bottomStart(),
        badgeColor: AppColor.activeColor,
        badgeContent: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(text, style: TextStyle(color: Colors.white))),
        child: SvgPicture.asset(
          svgPath,
          height: width,
          width: height,
        ),
      ),
    );
  }
}

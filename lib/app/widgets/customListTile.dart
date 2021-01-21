
import 'package:e_shop/app/constant/appColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomListTile extends StatelessWidget {
  final String svgPath;
  final String text;
  final Function onTap;

  const CustomListTile({Key key, @required  this.svgPath, @required  this.text, @required  this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: SvgPicture.asset(svgPath, color: Colors.black),
      title: Text(text, style: TextStyle(color: AppColor.textColor, fontSize: 15)),
      trailing: Container(
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: const Color(0xFFE3E5E8),
          borderRadius: BorderRadius.circular(100),
        ),
        child: InkWell(child: Icon(Icons.chevron_right_outlined, color: AppColor.textColor, size: 15), onTap: onTap),
      ),
    );
  }
}

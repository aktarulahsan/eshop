
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InputBox extends StatelessWidget {
  final Widget child;
  final String iconPath;

  const InputBox({Key key, @required this.child, @required this.iconPath, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: Get.width * .8,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        // color: Colors.grey.withOpacity(0.2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(iconPath),
          SizedBox(width: 20),
          Expanded(child: child),
        ],
      ),
    );
  }
}

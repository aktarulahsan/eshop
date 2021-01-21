
import 'package:flutter/material.dart';

class CircularGradientContainer extends StatelessWidget {
  final Color color1;
  final Color color2;
  final Widget child;

  const CircularGradientContainer({Key key, @required this.color1, @required this.color2, @required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      // padding:
      // EdgeInsets.only(top: 0, left: 25, right: 20, bottom: 10),
      width: 90,
      height: 90,

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.9],
            colors: [
              // Color(0xFFB4FF4E),
              // Color(0xFF2FC145),
              color1,
              color2
            ],
          ),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.withOpacity(0.1),
        //     spreadRadius: 5,
        //     // blurRadius: 2,
        //     offset: Offset(1,10), // changes position of shadow
        //   ),
        // ],
      ),
      child: child,
    );
  }
}

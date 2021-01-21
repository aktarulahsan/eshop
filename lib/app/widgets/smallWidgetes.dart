
import 'package:flutter/material.dart';

RichText makeStar(int colored){
  String star = '${'★' * colored}';
  return  RichText(
    text: TextSpan(
      text: star,
      style: TextStyle(color: const Color(0xFFFF6969), fontWeight: FontWeight.bold, fontSize: 15),
      children: <TextSpan>[
        TextSpan(text: '${'★' * (5-colored)}', style: TextStyle(fontWeight: FontWeight.w800, color: Color(0xFF727C8E))),
      ],
    ),
  );

}
import 'package:flutter/material.dart';
import 'package:get/get.dart'; 

class MessageAndnotificationView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MessageAndnotificationView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MessageAndnotificationView is working', 
          style: TextStyle(fontSize:20),
        ),
      ),
    );
  }
}
  
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
        child: Container(
          width: Get.width,
          height: Get.height,
          child: Image.asset("assets/images/logo.png"),
        ),
      ),
    );
  }
}

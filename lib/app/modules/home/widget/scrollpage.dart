import 'package:flutter/material.dart';

import 'package:get/get.dart';

class scroll_banner_homepage extends StatelessWidget {
  const scroll_banner_homepage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            width: Get.width * 0.75,
            height: Get.height * 0.22,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nikmati Layanan Semojo dan bayar dengan mudah",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text("di Tengah Pandemi COVID-19*",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w400)),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    "assets/images/logo.png",
                    width: Get.width * 0.25,
                    height: Get.height * 0.05,
                    alignment: Alignment.bottomLeft,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            width: Get.width * 0.75,
            height: Get.height * 0.22,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nikmati Layanan Semojo dan bayar dengan mudah",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text("di Tengah Pandemi COVID-19*",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w400)),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    "assets/images/logo.png",
                    width: Get.width * 0.25,
                    height: Get.height * 0.05,
                    alignment: Alignment.bottomLeft,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

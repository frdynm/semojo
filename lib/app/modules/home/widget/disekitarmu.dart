import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:semojo/app/modules/semua/views/semua_view.dart';

class disekitarmu extends StatelessWidget {
  const disekitarmu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Disekitarmu",
          style: TextStyle(fontSize: 20),
        ),
        InkWell(
          onTap: () {
            Get.to(SemuaView());
          },
          child: Text(
            "Lihat Semua",
            style: TextStyle(fontSize: 20, color: Colors.green),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:semojo/app/modules/semua/widget/katalog_disekitar.dart';

import '../controllers/semua_controller.dart';

class SemuaView extends GetView<SemuaController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back)),
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
          child: Column(
        children: [
          katalog_disekitar(),
        ],
      )),
    );
  }
}

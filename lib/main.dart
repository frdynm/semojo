import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:semojo/app/modules/login/controllers/login_controller.dart';
import 'package:semojo/app/modules/login/views/splashscreen.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final authC = Get.put(LoginController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    // return GetMaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: "Application",
    //   initialRoute: Routes.HOME,
    //   getPages: AppPages.routes,
    // );
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 3)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SplashScreen();
        } else {
          return Obx(() => GetMaterialApp(
                debugShowCheckedModeBanner: false,
                title: "Application",
                initialRoute: authC.isAuth.isTrue ? Routes.HOME : Routes.LOGIN,
                getPages: AppPages.routes,
              ));
        }
      },
    );
  }
}

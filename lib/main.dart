import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:semojo/app/modules/login/controllers/login_controller.dart';
import 'package:semojo/app/modules/login/views/splashscreen.dart';
import 'package:semojo/app/utils/erorPage.dart';

import 'app/routes/app_pages.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final authC = Get.put(LoginController(), permanent: true);

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return ErorPage();
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return FutureBuilder(
              future: authC.firstinisialisasi(),
              builder: (context, snapshot) => SplashScreen(),
            );
          } else {
            return Obx(() => GetMaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: "Application",
                  initialRoute:
                      authC.isAuth.isTrue ? Routes.HOME : Routes.LOGIN,
                  getPages: AppPages.routes,
                ));
          }
        });
  }
}

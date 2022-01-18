import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:semojo/app/modules/login/controllers/login_controller.dart';
import 'package:semojo/app/modules/login/views/splashscreen.dart';
import 'package:semojo/app/utils/erorPage.dart';
import 'package:semojo/app/utils/loading_page.dart';

import 'app/routes/app_pages.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //insialisasi get storage
  await GetStorage.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final authC = Get.put(LoginController());

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return ErorPage();
          }

          if (snapshot.connectionState == ConnectionState.done) {
            return FutureBuilder(
              future: Future.delayed(Duration(seconds: 3)),
              // future: authC.firstinisialisasi(), SplashScreen()
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Obx(() => GetMaterialApp(
                        debugShowCheckedModeBanner: false,
                        title: "Application",
                        initialRoute:
                            authC.isAuth.isTrue ? Routes.HOME : Routes.LOGIN,
                        getPages: AppPages.routes,
                      ));
                }
                return FutureBuilder(
                    future: authC.firstinisialisasi(),
                    builder: (context, snapshot) => SplashScreen());
              },
            );
          } else {
            return LoadingPage();
          }
        });
  }
}

import 'package:get/get.dart';

import 'package:semojo/app/modules/home/bindings/home_binding.dart';
import 'package:semojo/app/modules/home/views/home_view.dart';
import 'package:semojo/app/modules/login/bindings/login_binding.dart';
import 'package:semojo/app/modules/login/views/login_view.dart';
import 'package:semojo/app/modules/otp/bindings/otp_binding.dart';
import 'package:semojo/app/modules/otp/views/otp_view.dart';
import 'package:semojo/app/modules/register/bindings/register_binding.dart';
import 'package:semojo/app/modules/register/views/register_view.dart';
import 'package:semojo/app/modules/semua/bindings/semua_binding.dart';
import 'package:semojo/app/modules/semua/views/semua_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.OTP,
      page: () => OtpView(),
      binding: OtpBinding(),
    ),
    GetPage(
      name: _Paths.SEMUA,
      page: () => SemuaView(),
      binding: SemuaBinding(),
    ),
  ];
}

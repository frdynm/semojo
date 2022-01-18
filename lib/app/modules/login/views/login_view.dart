import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:semojo/app/modules/home/views/home_view.dart';
import 'package:semojo/app/modules/register/views/register_view.dart';
import 'package:semojo/app/modules/reset/views/reset_view.dart';
import '../controllers/login_controller.dart';

import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginView extends GetView<LoginController> {
  final authC = Get.put(LoginController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "Masukan email dan password untuk melanjutkan",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Email",
                style: TextStyle(
                    color: Colors.black26,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: authC.emailLogin,
                decoration: InputDecoration(
                    // focusedborder == ketika di klik nanti mau di apain si outline nya
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.green, width: 1.0)),
                    labelStyle: TextStyle(color: Colors.black),
                    hintText: "Admin@gmail.com",
                    suffixIcon: Icon(
                      Icons.mail_outline_rounded,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Password",
                style: TextStyle(
                    color: Colors.black26,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: authC.passwordLogin,
                //obsecure itu ketika di klik maka text berubah menjadi bintang
                obscureText: true,
                decoration: InputDecoration(
                    // focusedborder == ketika di klik nanti mau di apain si outline nya
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.green, width: 1.0)),
                    labelStyle: TextStyle(color: Colors.black),
                    hintText: "password",
                    suffixIcon: Icon(
                      Icons.password_sharp,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () => Get.to(ResetView()),
                  child: Text(
                    "Lupa Sandi ?",
                    style: TextStyle(
                        color: Colors.black26,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //ini untuk button
              Container(
                width: Get.width,
                height: 50,
                child: ElevatedButton(
                  onPressed: () => authC.Login(),
                  child: Text(
                    "Masuk",
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text("atau",
                    style: TextStyle(fontSize: 15, color: Colors.black26)),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(),
              Container(
                  width: Get.width,
                  child: SignInButton(Buttons.Google, onPressed: () {
                    authC.loginGoogle();
                  })),
              SizedBox(
                height: 5,
              ),

              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Belum Punya akun ? ",
                      style: TextStyle(fontSize: 10, color: Colors.black26),
                    ),
                    //agar si text nya bisa di klik dan mengeluarkan respon
                    InkWell(
                      onTap: () {
                        Get.to(RegisterView());
                      },
                      child: Text(
                        "Registrasi Disini.",
                        style: TextStyle(fontSize: 10, color: Colors.green),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

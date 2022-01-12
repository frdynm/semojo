import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:semojo/app/modules/home/views/home_view.dart';

import '../controllers/otp_controller.dart';

class OtpView extends GetView<OtpController> {
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
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Kode OTP Sudah dikirimkan melalui SMS ke nomor +6287730381234",
              style: TextStyle(
                  color: Colors.black26,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Container(
                  width: Get.width * 0.15,
                  height: Get.height * 0.15,
                  child: TextFormField(
                    //agar inputan di tengah menggunakan text align
                    textAlign: TextAlign.center,
                    //input formater == mengatur jenis inputan apa yang dibolehkan dan berapa digit yang boleh di input
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(1),
                    ],
                    //agar inputan hanya nomer
                    keyboardType: TextInputType.number,
                    //agar cuma bisa 1 input doang
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.green, width: 1.0)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: Get.width * 0.15,
                  height: Get.height * 0.15,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(1),
                    ],
                    //agar inputan hanya nomer
                    keyboardType: TextInputType.number,
                    //agar cuma bisa 1 input doang
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.green, width: 1.0)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: Get.width * 0.15,
                  height: Get.height * 0.15,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(1),
                    ],
                    //agar inputan hanya nomer
                    keyboardType: TextInputType.number,
                    //agar cuma bisa 1 input doang
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.green, width: 1.0)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: Get.width * 0.15,
                  height: Get.height * 0.15,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(1),
                    ],
                    //agar inputan hanya nomer
                    keyboardType: TextInputType.number,
                    //agar cuma bisa 1 input doang
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.green, width: 1.0)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Belum menerima kode?",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Minta kode baru dalam 00.25",
              style: TextStyle(
                  color: Colors.black26,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: Get.width,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(HomeView());
                },
                child: Text(
                  "Selanjutnya",
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.green),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

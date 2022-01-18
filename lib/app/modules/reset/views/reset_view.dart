import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/reset_controller.dart';

class ResetView extends GetView<ResetController> {
  final resetP = Get.put(ResetController());
  TextEditingController Dnama = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(15),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            "Akun anda lupa password? silahkan isi ulang agar anda dapat mereset kembali akun anda",
            textAlign: TextAlign.start,
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
            controller: Dnama,
            decoration: InputDecoration(
                // focusedborder == ketika di klik nanti mau di apain si outline nya
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 1.0)),
                labelStyle: TextStyle(color: Colors.black),
                hintText: "Admin@Gmail.com",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: Get.width,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                resetP.resetPassword(Dnama.text);
                // Get.to(OtpView());
              },
              child: Text(
                "Reset password",
                style: TextStyle(fontSize: 15, fontStyle: FontStyle.normal),
              ),
              style: ElevatedButton.styleFrom(primary: Colors.green),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "sudah punya akun? ",
                  style: TextStyle(fontSize: 10, color: Colors.black26),
                ),
                //agar si text nya bisa di klik dan mengeluarkan respon
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Text(
                    "Masuk",
                    style: TextStyle(fontSize: 10, color: Colors.green),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}

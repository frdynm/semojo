import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  //TODO: Implement RegisterController

  Future<void> register(String email, String password) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      await userCredential.user!.sendEmailVerification();
      Get.snackbar("Akun sudah berhasil dibuat",
          "Silahkan Check Email anda untuk mengkonfirmasi",
          snackPosition: SnackPosition.BOTTOM);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Get.snackbar(
            "Password minimal 6 angka", "silahkan masukan password lagi",
            snackPosition: SnackPosition.BOTTOM);
      } else if (e.code == 'email-already-in-use') {
        Get.snackbar("Email sudah terdaftar", "silahkan masukan email lain",
            snackPosition: SnackPosition.BOTTOM);
      }
    } catch (e) {
      print(e);
    }
  }
}

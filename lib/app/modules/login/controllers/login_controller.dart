import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:semojo/app/routes/app_pages.dart';

class LoginController extends GetxController {
  TextEditingController emailLogin = TextEditingController();
  TextEditingController passwordLogin = TextEditingController();

  var isAuth = false.obs;

  GoogleSignIn _googleSignIn = GoogleSignIn();
  GoogleSignInAccount? _account;
  UserCredential? userCredential, userFB;

  //ini kalo fb

  Future<void> firstinisialisasi() async {
    // disini mengubah isauth menjadi true sehingga login otomatis
    try {
      final isSignin = await _googleSignIn.isSignedIn();

      if (isSignin) {
        //ngechek isi dari get storage
        final box = GetStorage();
        final boxs = GetStorage();
        //jika is auth nya engga null sama is auth nya isinya true maka mengubah bolean is auth jadi true
        if (box.read('isauth') != null || box.read('isauth') == true) {
          isAuth.value = true;
        }
        if (boxs.read('loginEmail') != null ||
            boxs.read('loginEmail') == true) {
          isAuth.value = true;
        }
      }
    } catch (err) {
      print(err);
    }
  }

  Future<void> loginGoogle() async {
    try {
      //ini untuk handle kebocoran data sebelum login jadi di delete dulu
      await _googleSignIn.signOut();
      //jadi disini kita gunain method sign in lalu si file signin ini di kirim ke variable value lalu di push ke _account seperti variable diatas
      await _googleSignIn.signIn().then((value) => _account = value);

      //disin untuk dapat kondisi dia login atau engga typenya bolean
      final isSignin = await _googleSignIn.isSignedIn();

      if (isSignin) {
        //kondisi ketika si value nya ada isi
        print("Sudah berhasil login dengan akun");
        print(_account);

        final googleAuth = await _account!.authentication;

        //bikin dulu credential nah nanti di masukin ke Credential(nama variable googleauthnya)
        final credential = GoogleAuthProvider.credential(
          idToken: googleAuth.idToken,
          accessToken: googleAuth.accessToken,
        );

        //credential dipake buat di input ke firebase

        await FirebaseAuth.instance
            .signInWithCredential(credential)
            .then((value) => userCredential = value);

        print(userCredential);

        //menggunakan get storage untuk menyimpan data username dan password di hp
        final box = GetStorage();

        //untuk mengechek kalo data nya engga kosong nanti dia di hapus dulu langsung di isi ulang
        if (box.read('isauth') != null) {
          box.remove('isauth');
        }
        box.write('isauth', true);

        isAuth.value = true;
        Get.offAllNamed(Routes.HOME);
      } else {
        //jika gagal login guys
        print("Gagal Login");
      }
      ;
    } catch (errorCode) {
      print(errorCode);
      print("Gagal Login");
    }
    //check berhasil login atau tidak
  }

  Future<void> logoutGoogle() async {
    await _googleSignIn.disconnect();
    await _googleSignIn.signOut();
    //lalu di ruting ke login page lagi

    Get.offAllNamed(Routes.LOGIN);
  }

  Future<void> Login() async {
    try {
//di buang signout dulu
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(
            email: emailLogin.text,
            password: passwordLogin.text,
          )
          .then((value) => userFB = value);

      if (userFB != null) {
        print(userFB);

        final boxs = GetStorage();

        if (boxs.read('loginEmail') != null) {
          boxs.remove('loginEmail');
        }

        boxs.write('loginEmail', true);
        isAuth.value = true;
        Get.offAllNamed(Routes.HOME);
      } else {
        isAuth.value = false;
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Get.snackbar("Email tidak di temukan", "silahkan check kembali",
            snackPosition: SnackPosition.BOTTOM);
      } else if (e.code == 'wrong-password') {
        Get.snackbar(
            "Password yang anda masukan salah", "silahkan check kembali",
            snackPosition: SnackPosition.BOTTOM);
      }
    }
  }
}

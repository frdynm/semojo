import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:semojo/app/routes/app_pages.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  var isAuth = false.obs;

  GoogleSignIn _googleSignIn = GoogleSignIn();
  GoogleSignInAccount? _account;
  UserCredential? userCredential;

  Future<void> firstinisialisasi() async {
    // disini mengubah isauth menjadi true sehingga login otomatis

    try {
      final isSignin = await _googleSignIn.isSignedIn();

      if (isSignin) {
        isAuth.value = true;
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

        isAuth.value = true;
        Get.offAllNamed(Routes.HOME);
      } else {
        //jika gagal login guys
        print("Gagal Login");
      }
      ;
    } catch (error) {
      print("Gagal Login");
    }
    //check berhasil login atau tidak
  }
}

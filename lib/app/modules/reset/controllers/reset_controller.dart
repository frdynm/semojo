import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class ResetController extends GetxController {
  //TODO: Implement ResetController

  FirebaseAuth auth = FirebaseAuth.instance;

  void resetPassword(String email) async {
    if (email != "" && GetUtils.isEmail(email)) {
      try {
        await auth.sendPasswordResetEmail(email: email);
        Get.snackbar(
            "Berhasil", "Link Reset Password sudah kami kirim ke $email",
            snackPosition: SnackPosition.BOTTOM);
      } catch (e) {
        Get.snackbar("Reset password Gagal", "Chek Email anda kembali",
            snackPosition: SnackPosition.BOTTOM);
      }
    } else {
      Get.snackbar("Reset password Gagal", "Chek Email anda kembali",
          snackPosition: SnackPosition.BOTTOM);
    }
    ;
  }
}

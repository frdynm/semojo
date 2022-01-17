import 'package:get/get.dart';

import '../controllers/semua_controller.dart';

class SemuaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SemuaController>(
      () => SemuaController(),
    );
  }
}

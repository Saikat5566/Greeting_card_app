import 'package:get/get.dart';

import '../controllers/wedding_controller.dart';

class WeddingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WeddingController>(
      () => WeddingController(),
    );
  }
}

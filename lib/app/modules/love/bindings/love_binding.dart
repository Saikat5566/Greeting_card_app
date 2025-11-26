import 'package:get/get.dart';

import '../controllers/love_controller.dart';

class LoveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoveController>(
      () => LoveController(),
    );
  }
}

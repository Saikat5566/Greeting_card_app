import 'package:get/get.dart';

import '../controllers/new_baby_controller.dart';

class NewBabyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewBabyController>(
      () => NewBabyController(),
    );
  }
}

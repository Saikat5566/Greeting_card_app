import 'package:get/get.dart';

import '../controllers/graduation_controller.dart';

class GraduationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GraduationController>(
      () => GraduationController(),
    );
  }
}

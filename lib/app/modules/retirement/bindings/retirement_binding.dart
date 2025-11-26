import 'package:get/get.dart';

import '../controllers/retirement_controller.dart';

class RetirementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RetirementController>(
      () => RetirementController(),
    );
  }
}

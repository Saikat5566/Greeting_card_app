import 'package:get/get.dart';

import '../controllers/grativid_choice_controller.dart';

class GratividChoiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GratividChoiceController>(
      () => GratividChoiceController(),
    );
  }
}

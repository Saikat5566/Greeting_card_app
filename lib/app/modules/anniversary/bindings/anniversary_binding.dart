import 'package:get/get.dart';

import '../controllers/anniversary_controller.dart';

class AnniversaryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnniversaryController>(
      () => AnniversaryController(),
    );
  }
}

import 'package:get/get.dart';

import '../controllers/gratis_page_controller.dart';

class GratisPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GratisPageController>(
      () => GratisPageController(),
    );
  }
}

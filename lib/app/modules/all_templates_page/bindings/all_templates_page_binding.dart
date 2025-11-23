import 'package:get/get.dart';

import '../controllers/all_templates_page_controller.dart';

class AllTemplatesPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AllTemplatesPageController>(
      () => AllTemplatesPageController(),
    );
  }
}

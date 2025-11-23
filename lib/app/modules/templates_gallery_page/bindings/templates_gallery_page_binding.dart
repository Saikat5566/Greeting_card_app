import 'package:get/get.dart';

import '../controllers/templates_gallery_page_controller.dart';

class TemplatesGalleryPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TemplatesGalleryPageController>(
      () => TemplatesGalleryPageController(),
    );
  }
}

import 'package:get/get.dart';

import '../controllers/my_library_page_controller.dart';

class MyLibraryPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyLibraryPageController>(
      () => MyLibraryPageController(),
    );
  }
}

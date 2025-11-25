import 'package:get/get.dart';

import '../controllers/manage_package_page_controller.dart';

class ManagePackagePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ManagePackagePageController>(
      () => ManagePackagePageController(),
    );
  }
}

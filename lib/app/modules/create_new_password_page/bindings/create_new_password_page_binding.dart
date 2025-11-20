import 'package:get/get.dart';

import '../controllers/create_new_password_page_controller.dart';

class CreateNewPasswordPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateNewPasswordPageController>(
      () => CreateNewPasswordPageController(),
    );
  }
}

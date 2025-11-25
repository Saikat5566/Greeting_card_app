import 'package:get/get.dart';

import '../../splash/controllers/splash_controller.dart';
import '../controllers/first_page_controller.dart';

class FirstPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FirstPageController>(
      () => FirstPageController(),
    );
  }
}

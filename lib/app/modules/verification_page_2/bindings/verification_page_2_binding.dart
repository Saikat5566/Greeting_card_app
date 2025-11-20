import 'package:get/get.dart';

import '../controllers/verification_page_2_controller.dart';

class VerificationPage2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerificationPage2Controller>(
      () => VerificationPage2Controller(),
    );
  }
}

import 'package:get/get.dart';

import '../controllers/my_purchases_page_controller.dart';

class MyPurchasesPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyPurchasesPageController>(
      () => MyPurchasesPageController(),
    );
  }
}

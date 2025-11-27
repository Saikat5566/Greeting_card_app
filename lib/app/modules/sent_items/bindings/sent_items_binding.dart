import 'package:get/get.dart';

import '../controllers/sent_items_controller.dart';

class SentItemsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SentItemsController>(
      () => SentItemsController(),
    );
  }
}

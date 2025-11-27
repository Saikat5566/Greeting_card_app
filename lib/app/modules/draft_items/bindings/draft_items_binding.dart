import 'package:get/get.dart';

import '../controllers/draft_items_controller.dart';

class DraftItemsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DraftItemsController>(
      () => DraftItemsController(),
    );
  }
}

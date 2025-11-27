import 'package:get/get.dart';

import '../controllers/schedule_items_controller.dart';

class ScheduleItemsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScheduleItemsController>(
      () => ScheduleItemsController(),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/schedule_items_controller.dart';

class ScheduleItemsView extends GetView<ScheduleItemsController> {
  const ScheduleItemsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScheduleItemsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ScheduleItemsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

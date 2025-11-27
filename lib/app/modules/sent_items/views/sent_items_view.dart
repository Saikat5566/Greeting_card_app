import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sent_items_controller.dart';

class SentItemsView extends GetView<SentItemsController> {
  const SentItemsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SentItemsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SentItemsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/wedding_controller.dart';

class WeddingView extends GetView<WeddingController> {
  const WeddingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WeddingView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'WeddingView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

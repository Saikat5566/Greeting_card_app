import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/love_controller.dart';

class LoveView extends GetView<LoveController> {
  const LoveView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoveView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LoveView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

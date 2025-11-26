import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/congratulation_controller.dart';

class CongratulationView extends GetView<CongratulationController> {
  const CongratulationView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CongratulationView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CongratulationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/retirement_controller.dart';

class RetirementView extends GetView<RetirementController> {
  const RetirementView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RetirementView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'RetirementView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

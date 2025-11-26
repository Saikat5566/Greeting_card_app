import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/graduation_controller.dart';

class GraduationView extends GetView<GraduationController> {
  const GraduationView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GraduationView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'GraduationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

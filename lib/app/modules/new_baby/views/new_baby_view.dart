import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/new_baby_controller.dart';

class NewBabyView extends GetView<NewBabyController> {
  const NewBabyView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NewBabyView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'NewBabyView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

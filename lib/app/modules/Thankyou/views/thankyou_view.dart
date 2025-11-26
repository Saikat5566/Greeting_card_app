import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/thankyou_controller.dart';

class ThankyouView extends GetView<ThankyouController> {
  const ThankyouView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ThankyouView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ThankyouView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

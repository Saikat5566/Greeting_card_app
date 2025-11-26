import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/anniversary_controller.dart';

class AnniversaryView extends GetView<AnniversaryController> {
  const AnniversaryView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnniversaryView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AnniversaryView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

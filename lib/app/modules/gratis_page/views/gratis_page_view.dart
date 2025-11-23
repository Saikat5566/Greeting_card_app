import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/gratis_page_controller.dart';

class GratisPageView extends GetView<GratisPageController> {
  const GratisPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GratisPageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'GratisPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

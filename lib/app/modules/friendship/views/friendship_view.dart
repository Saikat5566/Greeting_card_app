import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/friendship_controller.dart';

class FriendshipView extends GetView<FriendshipController> {
  const FriendshipView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FriendshipView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FriendshipView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

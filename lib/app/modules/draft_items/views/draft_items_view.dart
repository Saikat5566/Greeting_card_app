import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:greeting_card_app/app/modules/common_widget/custom_header_nav_bar.dart';

import '../controllers/draft_items_controller.dart';

class DraftItemsView extends GetView<DraftItemsController> {
  const DraftItemsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Draft'),
        centerTitle: true,
      ),
      body: HeaderNavBar()
    );
  }
}

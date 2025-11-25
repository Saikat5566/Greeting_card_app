import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:greeting_card_app/app/modules/common_widget/custom_listview_builder.dart';

import '../controllers/my_purchases_page_controller.dart';

class MyPurchasesPageView extends GetView<MyPurchasesPageController> {
  final List<String> myPurchasesImage = [
    'assets/myPurchasesImage/Birthday Wishes.png',
    'assets/myPurchasesImage/Thank You.png',
    'assets/myPurchasesImage/Halloween 2.png',
    'assets/myPurchasesImage/Anniversery.png',
    'assets/myPurchasesImage/Holiday.png',
    'assets/myPurchasesImage/Halloween.png',
  ];

  MyPurchasesPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Purchases',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 24,
            color: Color(0xFF262640),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomListViewBuilder(libraryImages: myPurchasesImage, height: 114),
          ],
        ),
      ),
    );
  }
}

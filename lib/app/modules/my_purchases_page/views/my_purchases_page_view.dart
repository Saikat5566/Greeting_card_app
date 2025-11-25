import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
            ListView.builder(
              shrinkWrap: true,
              itemCount: myPurchasesImage.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Container(
                  height: 114,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xFFF5F0FF),
                    border: Border.all(color: Color(0xFFD7C2FF)),
                  ),
                  child: Image.asset(myPurchasesImage[index]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

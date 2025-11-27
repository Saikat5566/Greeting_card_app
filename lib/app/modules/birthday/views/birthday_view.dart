import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:greeting_card_app/app/modules/common_widget/custom_gridview_builder.dart';

import '../controllers/birthday_controller.dart';

class BirthdayView extends GetView<BirthdayController> {
  final List<String> birthdayCards = [
    'assets/birthday_cards/755b2c51b68011f49e1b7fa65dcdaea54954fac9.jpg',
    'assets/birthday_cards/14a939cf28acd2dd50d8a54c5b78b8d06d7741d0.jpg',
    'assets/birthday_cards/d5bbc05b2639e37778e2de9c0b8ec7931dc7a1b9.jpg',
    'assets/birthday_cards/9fa3a93d759610653fdce1016de19b5a56890719.jpg',
    'assets/birthday_cards/6a7994ada626eb28b7a16416e13f9248e61abde3.jpg',
    'assets/birthday_cards/378a1a85a3abbb896b6cffae369dab14864a021f.jpg',
  ];

  BirthdayView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Birthday',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: Color(0xFF262640),
              ),
            ),

            Text(
              '150 cards',
              style: TextStyle(fontSize: 16, color: Color(0xFF767599)),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            CustomGridViewBuilder(listOfTemplates: birthdayCards),
          ],
        ),
      ),
    );
  }
}

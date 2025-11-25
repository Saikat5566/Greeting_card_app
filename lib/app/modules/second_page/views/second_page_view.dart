import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:greeting_card_app/app/modules/common_widget/custom_eleveted_button.dart';
import 'package:greeting_card_app/app/routes/app_pages.dart';

import '../controllers/second_page_controller.dart';

class SecondPageView extends GetView<SecondPageController> {
  const SecondPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(child: Image.asset('assets/images/Ellipse 2068.png')),
              Container(
                child: Image.asset(
                  'assets/images/4a144df950cbf3cd6f28f54a9d69e5ab78cb4d45.png',
                ),
              ),
            ],
          ),

          SizedBox(height: 33),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Text(
                  textAlign: TextAlign.center,
                  'Every act of care\ncreates a ripple of joy',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 8),
                Text(
                  'Send your Grativid via email or SMS',
                  style: TextStyle(fontSize: 16, color: Color(0xFF767599)),
                ),

                SizedBox(height: 68),

                Icon(Icons.more_horiz, color: Color(0xFF2970FF), size: 30),

                CustomElevetedButton(
                  onPressed: () => Get.toNamed(Routes.WELCOME_PAGE),
                  text: 'Next',
                  color: Color(0xFF5A00FF),
                  textColor: Colors.white,
                  buttonSize: Size(double.infinity, 52),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

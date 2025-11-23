import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:greeting_card_app/app/routes/app_pages.dart';

import '../controllers/first_page_controller.dart';

class FirstPageView extends GetView<FirstPageController> {
  const FirstPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(child: Image.asset('assets/images/Ellipse 2068.png')),
              Container(child: Image.asset('assets/images/_Ð¡Ð»Ð¾Ð¹_1.png')),
            ],
          ),
          SizedBox(height: 33),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Text(
                  'Send joy in motion',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 8),
                Text(
                  textAlign: TextAlign.center,
                  'Create and send video messages inside\nbeautifully designed cards.',
                  style: TextStyle(fontSize: 16, color: Color(0xFF767599)),
                ),

                SizedBox(height: 68),

                Icon(Icons.more_horiz, color: Color(0xFF2970FF), size: 30),

                ElevatedButton(
                  onPressed: () => Get.toNamed(Routes.SECOND_PAGE),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF5A00FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    minimumSize: Size(double.infinity, 52),
                  ),
                  child: Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

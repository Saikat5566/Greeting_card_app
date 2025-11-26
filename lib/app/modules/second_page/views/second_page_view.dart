import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greeting_card_app/app/modules/common_widget/custom_eleveted_button.dart';
import 'package:greeting_card_app/app/routes/app_pages.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
              Image.asset('assets/images/Ellipse 2068.png'),
              Image.asset(
                'assets/images/4a144df950cbf3cd6f28f54a9d69e5ab78cb4d45.png',
              ),
            ],
          ),

          const SizedBox(height: 33),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Text(
                  'Every act of care\ncreates a ripple of joy',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  'Send your Grativid via email or SMS',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF767599),
                  ),
                ),

                const SizedBox(height: 68),

                SmoothPageIndicator(
                  controller: PageController(initialPage: 1),
                  count: 3,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8,
                    dotWidth: 8,
                    expansionFactor: 3,
                    spacing: 6,
                    activeDotColor: Color(0xFF2970FF),
                    dotColor: Colors.grey.shade300,
                  ),
                ),

                const SizedBox(height: 40),

                CustomElevetedButton(
                  onPressed: () => Get.toNamed(Routes.WELCOME_PAGE),
                  text: 'Next',
                  textColor: Colors.white,
                  color: const Color(0xFF5A00FF),
                  buttonSize: const Size(double.infinity, 52),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

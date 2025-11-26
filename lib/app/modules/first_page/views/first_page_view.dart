import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greeting_card_app/app/modules/second_page/views/second_page_view.dart';
import 'package:greeting_card_app/app/modules/welcome_page/views/welcome_page_view.dart';
import 'package:greeting_card_app/app/routes/app_pages.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../common_widget/custom_eleveted_button.dart';
import '../controllers/first_page_controller.dart';

class FirstPageView extends StatefulWidget {
  const FirstPageView({super.key});

  @override
  State<FirstPageView> createState() => _FirstPageViewState();
}

class _FirstPageViewState extends State<FirstPageView> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: pageController,
              children: [
                Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset('assets/images/Ellipse 2068.png'),
                        Image.asset('assets/images/_Ð¡Ð»Ð¾Ð¹_1.png'),
                      ],
                    ),
                    const SizedBox(height: 33),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: const [
                          Text(
                            'Send joy in motion',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Create and send video messages inside\nbeautifully designed cards.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF767599),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          SmoothPageIndicator(
            controller: pageController,
            count: 3,
            effect: ExpandingDotsEffect(
              dotHeight: 8,
              dotWidth: 8,
              spacing: 6,
              expansionFactor: 3,
              activeDotColor: Color(0xFF2970FF),
              dotColor: Colors.grey.shade300,
            ),
          ),

          const SizedBox(height: 30),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomElevetedButton(
              onPressed: () => Get.toNamed(Routes.SECOND_PAGE),
              text: 'Next',
              color: Color(0xFF5A00FF),
              textColor: Colors.white,
              buttonSize: Size(double.infinity, 52),
            ),
          ),

          SizedBox(height: 100),
        ],
      ),
    );
  }
}

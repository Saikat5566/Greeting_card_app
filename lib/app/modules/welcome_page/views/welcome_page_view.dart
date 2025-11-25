import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:greeting_card_app/app/modules/common_widget/custom_eleveted_button.dart';

import 'package:greeting_card_app/app/routes/app_pages.dart';

import '../controllers/welcome_page_controller.dart';

class WelcomePageView extends GetView<WelcomePageController> {
  const WelcomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset('assets/images/Ellipse 20682.png'),

              Column(
                children: [
                  SizedBox(height: 270),
                  Container(
                    height: 156,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/bf042504c8fdc2edd3feeea7a5e4ab188c7b7aa1.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

          SizedBox(height: 33),
          Text(
            'Welcome',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 28,
              color: Color(0xFF262640),
            ),
          ),

          SizedBox(height: 8),

          Text(
            'Start customizing today and earn Gratis!',
            style: TextStyle(fontSize: 16, color: Color(0xFF767599)),
          ),

          SizedBox(height: 20),

          Icon(Icons.more_horiz, color: Color(0xFF2970FF), size: 30),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                CustomElevetedButton(
                  onPressed: () => Get.toNamed(Routes.LOGIN_PAGE),
                  text: 'Login',
                  textColor: Color(0xFF5A00FF),
                  color: Colors.white,
                  borderColor: Color(0xFF5A00FF),
                  buttonSize: Size(double.infinity, 52),
                ),

                SizedBox(height: 16),

                CustomElevetedButton(
                  onPressed: () => Get.toNamed(Routes.REGISTER_PAGE),
                  text: 'Register',
                  textColor: Colors.white,
                  color: Color(0xFF5A00FF),
                  buttonSize: Size(double.infinity, 52),
                ),
              ],
            ),
          ),

          SizedBox(height: 25),
        ],
      ),
    );
  }
}

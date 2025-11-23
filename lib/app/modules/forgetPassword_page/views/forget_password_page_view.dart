import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:greeting_card_app/app/routes/app_pages.dart';

import '../controllers/forget_password_page_controller.dart';

class ForgetPasswordPageView extends GetView<ForgetPasswordPageController> {
  const ForgetPasswordPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () => Get.toNamed(Routes.LOGIN_PAGE),
                icon: Icon(Icons.arrow_back),
              ),
            ),
            Center(
              child: Text(
                "Forgot Password?",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 48),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                textAlign: TextAlign.center,
                'Enter your email, we will send a verificatio\ncode to your email.',
                style: TextStyle(color: Color(0xFF767599)),
              ),
            ),

            SizedBox(height: 32),

            Text(
              'Email address',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color(0xFF262640),
              ),
            ),

            SizedBox(height: 6),

            Container(
              height: 52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFE5E7EC),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 0),
                  ),
                ],
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.email, color: Color(0xFF767599), size: 20),
                    border: InputBorder.none,
                    hintText: 'Enter your email',
                    hintStyle: TextStyle(color: Color(0xFF767599)),
                  ),
                ),
              ),
            ),

            SizedBox(height: 32),

            ElevatedButton(
              onPressed: () => Get.toNamed(Routes.VERIFICATION_PAGE_2),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: Color(0xFF5A00FF),
                minimumSize: Size(double.infinity, 52),
              ),
              child: Text(
                'Send Code',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:greeting_card_app/app/modules/common_widget/custom_eleveted_button.dart';
import 'package:greeting_card_app/app/modules/common_widget/custom_text_field.dart';
import 'package:greeting_card_app/app/routes/app_pages.dart';

import '../controllers/forget_password_page_controller.dart';

class ForgetPasswordPageView extends GetView<ForgetPasswordPageController> {
  const ForgetPasswordPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password?", style: TextStyle(fontSize: 20)),
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

            CustomTextField(
              text: 'Email',
              hintText: 'Enter your email',
              icon: Icon(Icons.email_outlined),
            ),

            SizedBox(height: 32),

            CustomElevetedButton(
              text: 'Send Code',
              color: Color(0xFF5A00FF),
              onPressed: () => Get.toNamed(Routes.VERIFICATION_PAGE_2),
              textColor: Colors.white,
              buttonSize: Size(double.infinity, 52),
            ),
          ],
        ),
      ),
    );
  }
}

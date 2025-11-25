import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:greeting_card_app/app/modules/common_widget/custom_eleveted_button.dart';
import 'package:greeting_card_app/app/modules/common_widget/custom_text_field.dart';
import 'package:greeting_card_app/app/modules/common_widget/login_options.dart';
import 'package:greeting_card_app/app/routes/app_pages.dart';

import '../controllers/login_page_controller.dart';

class LoginPageView extends GetView<LoginPageController> {
  const LoginPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.toNamed(Routes.WELCOME_PAGE),
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),

            Text(
              'Hey! Welcome Back',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Color(0xFF262640),
              ),
            ),
            Text(
              'Please enter your details',
              style: TextStyle(color: Color(0xFF767599)),
            ),

            SizedBox(height: 32),
            CustomTextField(
              text: 'Email',
              hintText: 'Enter email address',
              icon: Icon(Icons.email_outlined),
            ),

            CustomTextField(
              text: 'Password',
              hintText: 'Enter Password',
              icon: Icon(Icons.lock_outline),
              suffixIcon: Icon(Icons.remove_red_eye_outlined),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color(0xFF5A00FF),
                      ),
                      child: Icon(Icons.check, size: 16, color: Colors.white),
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Remember me',
                      style: TextStyle(fontSize: 16, color: Color(0xFF767599)),
                    ),
                  ],
                ),

                GestureDetector(
                  onTap: () => Get.toNamed(Routes.FORGET_PASSWORD_PAGE),
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFDC3545),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 32),

            CustomElevetedButton(
              onPressed: () => Get.toNamed(Routes.HOME_PAGE),
              text: 'Login',
              textColor: Colors.white,
              buttonSize: Size(double.infinity, 52),
              color: Color(0xFF5A00FF),
            ),

            SizedBox(height: 32),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: 106, height: 1, color: Colors.black),
                Text(
                  'Or login with',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF262640),
                  ),
                ),
                Container(width: 106, height: 1, color: Colors.black),
              ],
            ),

            SizedBox(height: 24),

            LoginOptions(),

            SizedBox(height: 32),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don’t have an account?',
                  style: TextStyle(fontSize: 16, color: Color(0xFF767599)),
                ),
                SizedBox(width: 8),
                GestureDetector(
                  onTap: () => Get.toNamed(Routes.REGISTER_PAGE),
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF5A00FF),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';
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
            Text(
              textAlign: TextAlign.start,
              'Email',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFF262640),
              ),
            ),

            SizedBox(height: 6),

            Container(
              height: 52,
              width: 335,
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

            SizedBox(height: 20),
            Text(
              textAlign: TextAlign.start,
              'Password',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFF262640),
              ),
            ),

            SizedBox(height: 6),

            Container(
              height: 52,
              width: 335,
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
                    icon: Icon(Icons.lock, color: Color(0xFF767599), size: 20),
                    border: InputBorder.none,
                    hintText: 'Enter Password',
                    hintStyle: TextStyle(color: Color(0xFF767599)),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

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
                SizedBox(width: 98),
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

            ElevatedButton(
              onPressed: () => Get.toNamed(Routes.HOME_PAGE),

              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF5A00FF),
                minimumSize: Size(335, 52),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
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

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 56,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xFFF0F0F0),
                    image: DecorationImage(
                      image: AssetImage('assets/images/Google.png'),
                    ),
                  ),
                ),

                Container(
                  height: 56,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xFFF0F0F0),
                    image: DecorationImage(
                      image: AssetImage('assets/images/Apple.png'),
                    ),
                  ),
                ),

                Container(
                  height: 56,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xFFF0F0F0),
                    image: DecorationImage(
                      image: AssetImage('assets/images/Facebook.png'),
                    ),
                  ),
                ),
              ],
            ),

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

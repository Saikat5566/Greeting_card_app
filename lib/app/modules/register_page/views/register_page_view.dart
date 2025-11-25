import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:greeting_card_app/app/modules/common_widget/custom_eleveted_button.dart';
import 'package:greeting_card_app/app/routes/app_pages.dart';

import '../../common_widget/custom_text_field.dart';
import '../../common_widget/login_options.dart';
import '../controllers/register_page_controller.dart';

class RegisterPageView extends GetView<RegisterPageController> {
  const RegisterPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'Create Your Account',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Color(0xFF262640),
                ),
              ),
              Text(
                'Let’s get started by creating account',
                style: TextStyle(color: Color(0xFF767599)),
              ),

              SizedBox(height: 32),

              CustomTextField(
                text: 'Full Name',
                hintText: 'Enter your ful name',
                icon: Icon(Icons.person_2_outlined),
              ),

              CustomTextField(
                text: 'Email Address',
                hintText: 'Enter your email',
                icon: Icon(Icons.email_outlined),
              ),

              CustomTextField(
                text: 'Phone',
                hintText: 'xxxxxxxxxxxx',
                icon: Icon(Icons.call),
              ),

              CustomTextField(
                text: 'Password',
                hintText: 'Enter Password',
                icon: Icon(Icons.lock_outline),
                suffixIcon: Icon(Icons.visibility_outlined),
              ),

              CustomTextField(
                text: 'Confirm Password',
                hintText: 'Enter Password',
                icon: Icon(Icons.lock_outline),
                suffixIcon: Icon(Icons.visibility_outlined),
              ),

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
                    'Agree to the Terms of service and Privacy policy.',
                    style: TextStyle(fontSize: 16, color: Color(0xFF767599)),
                  ),
                ],
              ),

              SizedBox(height: 32),

              CustomElevetedButton(
                onPressed: () => Get.toNamed(Routes.VERIFICATION_PAGE),
                text: 'Register',
                textColor: Colors.white,
                color: Color(0xFF5A00FF),
                buttonSize: Size(double.infinity, 52),
              ),

              SizedBox(height: 32),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(width: 106, height: 1, color: Colors.black),
                  Text(
                    'Or register with',
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
                    'Already have an account??',
                    style: TextStyle(fontSize: 16, color: Color(0xFF767599)),
                  ),
                  SizedBox(width: 8),
                  GestureDetector(
                    onTap: () => Get.toNamed(Routes.LOGIN_PAGE),
                    child: Text(
                      'Log in',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF5A00FF),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}

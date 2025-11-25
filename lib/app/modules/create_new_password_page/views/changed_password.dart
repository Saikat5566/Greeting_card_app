import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:greeting_card_app/app/modules/common_widget/custom_eleveted_button.dart';

import '../../../routes/app_pages.dart';

class ChangedPassword extends StatelessWidget {
  const ChangedPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      body: Center(
        child: Container(
          height: 366,
          width: 335,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Column(
            children: [
              SizedBox(height: 24),
              Image.asset('assets/images/Frame 2147228650.png'),
              SizedBox(height: 24),
              RichText(
                text: TextSpan(
                  text: 'Password Changed',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Color(0xFF262640),
                  ),
                ),
              ),
              RichText(
                text: TextSpan(
                  text:
                      'Password changed successfully, you\ncan login again with new password.',
                  style: TextStyle(fontSize: 16, color: Color(0xFF767599)),
                ),
              ),

              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CustomElevetedButton(
                  text: 'Back to Login',
                  onPressed: () => Get.toNamed(Routes.LOGIN_PAGE),
                  textColor: Colors.white,
                  color: Color(0xFF5A00FF),
                  buttonSize: Size(double.infinity, 52),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

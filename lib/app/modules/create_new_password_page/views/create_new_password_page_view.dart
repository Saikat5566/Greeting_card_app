import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:greeting_card_app/app/modules/common_widget/custom_eleveted_button.dart';
import 'package:greeting_card_app/app/modules/common_widget/custom_text_field.dart';
import 'package:greeting_card_app/app/modules/create_new_password_page/views/changed_password.dart';

import '../../../routes/app_pages.dart';
import '../controllers/create_new_password_page_controller.dart';

class CreateNewPasswordPageView
    extends GetView<CreateNewPasswordPageController> {
  const CreateNewPasswordPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create New Password',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF262640),
          ),
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
                'Your password must be different from\nprevious used password.',
                style: TextStyle(color: Color(0xFF767599)),
              ),
            ),

            SizedBox(height: 32),

            CustomTextField(
              text: 'New Password',
              hintText: 'Enter Password',
              icon: Icon(Icons.lock_outline),
              suffixIcon: Icon(Icons.remove_red_eye_outlined),
            ),

            CustomTextField(
              text: 'Confirm Password',
              hintText: 'Enter Password',
              icon: Icon(Icons.lock_outline),
              suffixIcon: Icon(Icons.remove_red_eye_outlined),
            ),

            CustomElevetedButton(
              text: 'Change Password',
              color: Color(0xFF5A00FF),
              textColor: Colors.white,
              buttonSize: Size(double.infinity, 52),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChangedPassword()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

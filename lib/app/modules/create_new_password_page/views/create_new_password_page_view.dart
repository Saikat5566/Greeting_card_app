import 'package:flutter/material.dart';

import 'package:get/get.dart';
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
        leading: IconButton(
          onPressed: () => Get.toNamed(Routes.FORGET_PASSWORD_PAGE),
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          textAlign: TextAlign.center,
          'Create New Password',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF262640),
          ),
        ),
        titleSpacing: 67,
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

            Text(
              textAlign: TextAlign.start,
              'New Password',
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
                    suffixIcon: Icon(Icons.visibility_outlined),
                    contentPadding: EdgeInsets.only(top: 14),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

            Text(
              textAlign: TextAlign.start,
              'Confirm Password ',
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
                    suffixIcon: Icon(Icons.visibility_outlined),
                    contentPadding: EdgeInsets.only(top: 14),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChangedPassword()),
              ),

              style: ElevatedButton.styleFrom(
                minimumSize: Size(335, 52),
                backgroundColor: Color(0xFF5A00FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'Change Password',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
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

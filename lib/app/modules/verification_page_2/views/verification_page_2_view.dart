import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:greeting_card_app/app/modules/common_widget/custom_eleveted_button.dart';

import '../../../routes/app_pages.dart';
import '../controllers/verification_page_2_controller.dart';

class VerificationPage2View extends GetView<VerificationPage2Controller> {
  const VerificationPage2View({super.key});

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
                onPressed: () => Get.toNamed(Routes.FORGET_PASSWORD_PAGE),
                icon: Icon(Icons.arrow_back),
              ),
            ),

            Center(
              child: Text(
                'Verification Code',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Color(0xFF262640),
                ),
              ),
            ),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 48),

            Align(
              alignment: Alignment.topCenter,
              child: Text(
                textAlign: TextAlign.center,
                'Enter the verification code that we have sent\nto your email',
                style: TextStyle(color: Color(0xFF767599)),
              ),
            ),

            SizedBox(height: 32),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 41.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFFE5E7EC),
                    ),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),

                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFFE5E7EC),
                    ),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),

                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFFE5E7EC),
                    ),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),

                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFFE5E7EC),
                    ),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Re-send code in',
                  style: TextStyle(fontSize: 16, color: Color(0xFF767599)),
                ),
                SizedBox(width: 5),
                Text(
                  '0:43',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF262640),
                  ),
                ),
              ],
            ),

            SizedBox(height: 110),
            CustomElevetedButton(
              text: 'Continue',
              color: Color(0xFF5A00FF),
              onPressed: () => Get.toNamed(Routes.CREATE_NEW_PASSWORD_PAGE),
              textColor: Colors.white,
              buttonSize: Size(double.infinity, 52),
            ),

            SizedBox(height: 24),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Re-send code in',
                  style: TextStyle(fontSize: 16, color: Color(0xFF767599)),
                ),
                SizedBox(width: 5),
                Text(
                  '0:43',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF262640),
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

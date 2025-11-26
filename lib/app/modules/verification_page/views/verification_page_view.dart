import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:greeting_card_app/app/modules/common_widget/custom_eleveted_button.dart';
import 'package:greeting_card_app/app/modules/verification_page/views/continue.dart';

import '../../../routes/app_pages.dart';

import '../controllers/verification_page_controller.dart';

class VerificationPageView extends GetView<VerificationPageController> {
  const VerificationPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Verification Code',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: Color(0xFF262640),
          ),
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
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Continue()),
              ),
              color: Color(0xFF5A00FF),
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

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:greeting_card_app/app/modules/common_widget/custom_eleveted_button.dart';
import 'package:greeting_card_app/app/modules/common_widget/custom_text_field.dart';

import '../controllers/edit_profile_controller.dart';

class EditProfileView extends GetView<EditProfileController> {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit Profile',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w800,
            color: Color(0xFF262640),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 24),
            Align(
              alignment: Alignment.topCenter,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    height: 160,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      image: DecorationImage(
                        image: AssetImage('assets/images/profile image.png'),
                      ),
                    ),
                  ),

                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFEBE0FF),
                    ),
                    child: Icon(
                      Icons.camera_alt_rounded,
                      color: Color(0xFF5A00FF),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 24),

            CustomTextField(
              text: 'Full Name',
              hintText: 'Sarah Anderson',
              icon: Icon(Icons.person_2_outlined),
            ),

            CustomTextField(
              text: 'Email Address',
              hintText: 'sarah@email.com',
              icon: Icon(Icons.email_outlined),
            ),

            CustomTextField(
              text: 'Phone Number',
              hintText: '+12569874745',
              icon: Icon(Icons.call),
            ),

            SizedBox(height: 145),

            CustomElevetedButton(
              text: 'Save Changes',
              color: Color(0xFF5A00FF),
              buttonSize: Size(double.infinity, 52),
              textColor: Colors.white,
              onPressed: () {}     ,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:greeting_card_app/app/modules/common_widget/custom_bottom_navigation_bar.dart';
import 'package:greeting_card_app/app/modules/common_widget/custom_eleveted_button.dart';

import '../../../routes/app_pages.dart';
import '../controllers/profile_page_controller.dart';

class ProfilePageView extends GetView<ProfilePageController> {
  const ProfilePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 24),

            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 268,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xFFF5F0FF),
                    border: Border.all(color: Color(0xFFD7C2FF)),
                  ),
                ),

                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 21),
                      child: Container(
                        height: 102,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/profile image.png',
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 16),
                    Text(
                      'Sarah Anderson',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 24,
                        color: Color(0xFF262640),
                      ),
                    ),

                    Text(
                      'sarah@email.com',
                      style: TextStyle(fontSize: 16, color: Color(0xFF767599)),
                    ),

                    SizedBox(height: 12),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Your remaining gratis',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              Text(
                                '40/100',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Stack(
                            children: [
                              Container(
                                height: 8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Color(0xFFD1B8FF),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(right: 70),
                                child: Container(
                                  height: 8,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Color(0xFF5A00FF),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 24),

            GestureDetector(
              onTap: () => Get.toNamed(Routes.EDIT_PROFILE),
              child: Container(
                height: 58,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFFF5F0FF),
                  border: Border.all(color: Color(0xFFD7C2FF)),
                ),

                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.shopping_bag_rounded,
                            color: Color(0xFF5A00FF),
                          ),
                          SizedBox(width: 12),
                          Text(
                            'Edit Profile',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: Color(0xFF5A00FF),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () => Get.toNamed(Routes.MANAGE_PACKAGE_PAGE),
              child: Container(
                height: 76,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFFF5F0FF),
                  border: Border.all(color: Color(0xFFD7C2FF)),
                ),

                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.person_2_outlined,
                            color: Color(0xFF5A00FF),
                          ),
                          SizedBox(width: 12),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Manage Package',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'Basic Package',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color(0xFF767599),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: Color(0xFF5A00FF),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

            GestureDetector(
              onTap: () => Get.toNamed(Routes.MY_PURCHASES_PAGE),
              child: Container(
                height: 58,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFFF5F0FF),
                  border: Border.all(color: Color(0xFFD7C2FF)),
                ),

                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.shopping_bag_rounded,
                            color: Color(0xFF5A00FF),
                          ),
                          SizedBox(width: 12),
                          Text(
                            'My Purchases',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: Color(0xFF5A00FF),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

            Container(
              height: 58,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xFFF5F0FF),
                border: Border.all(color: Color(0xFFD7C2FF)),
              ),

              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.delete_forever_outlined,
                          color: Color(0xFF5A00FF),
                        ),
                        SizedBox(width: 12),
                        Text(
                          'Delete Account',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Icon(Icons.keyboard_arrow_right, color: Color(0xFF5A00FF)),
                  ],
                ),
              ),
            ),

            SizedBox(height: 24),

            CustomElevetedButton(
              text: 'Logout',
              textColor: Colors.white,
              color: Color(0xFFDC3545),
              onPressed: () => Get.toNamed(Routes.LOGIN_PAGE),
              icon: Icons.logout,
              buttonSize: Size(double.infinity, 52),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

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
                    Icon(Icons.keyboard_arrow_right, color: Color(0xFF5A00FF)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
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
                        Icon(Icons.person_2_outlined, color: Color(0xFF5A00FF)),
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
                    Icon(Icons.keyboard_arrow_right, color: Color(0xFF5A00FF)),
                  ],
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
                    Icon(Icons.keyboard_arrow_right, color: Color(0xFF5A00FF)),
                  ],
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

            ElevatedButton(
              onPressed: () => Get.toNamed(Routes.LOGIN_PAGE),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFDC3545),
                minimumSize: Size(double.infinity, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.logout, color: Colors.white),
                  Text(
                    'Logout',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 108,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFEFE5FF), Color(0xFFEAE6FF), Color(0xFFEBDEF7)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  IconButton(
                    onPressed: () => Get.toNamed(Routes.HOME_PAGE),
                    icon: Icon(Icons.home_outlined),
                  ),
                  Text('Home'),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () => Get.toNamed(Routes.MY_LIBRARY_PAGE),
                    icon: Icon(FontAwesomeIcons.book),
                  ),
                  Text('Library'),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () => Get.toNamed(Routes.TEMPLATES_GALLERY_PAGE),
                    icon: Icon(Icons.grid_on_rounded),
                  ),
                  Text('Templates'),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () => Get.toNamed(Routes.GRATIS_PAGE),
                    icon: Icon(FontAwesomeIcons.crown),
                  ),
                  Text('Gratis'),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () => Get.toNamed(Routes.PROFILE_PAGE),
                    icon: Icon(Icons.person_2_outlined),
                  ),
                  Text('Profile'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

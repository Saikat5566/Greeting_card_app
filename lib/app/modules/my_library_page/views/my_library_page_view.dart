import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/my_library_page_controller.dart';

class MyLibraryPageView extends GetView<MyLibraryPageController> {
  final List<String> libraryImages = [
    'assets/library/BirthDay2147228800.png',
    'assets/library/Container.png',
    'assets/library/Anniversery.png',
    'assets/library/holiday.png',
  ];

  MyLibraryPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Library',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 24,
                color: Color(0xFF262640),
              ),
            ),

            Text(
              'View and manage all your greetings',
              style: TextStyle(fontSize: 16, color: Color(0xFF767599)),
            ),
          ],
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 32),


            Container(
              height: 40,
              decoration: BoxDecoration(
                color: Color(0xFFEBE0FF),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('All'),
                    Text('Sent'),
                    Text('Schedule'),
                    Text('Draft'),
                  ],
                ),
              ),
            ),

            SizedBox(height: 16),

            ListView.builder(
              itemCount: 4,
              shrinkWrap: true,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(bottom: 12),
                child: Container(
                  height: 114,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xFFD7C2FF),
                  ),
                  child: Image.asset(libraryImages[index]),
                ),
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

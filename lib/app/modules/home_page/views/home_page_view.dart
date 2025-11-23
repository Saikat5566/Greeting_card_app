import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:greeting_card_app/app/modules/home_page/views/templatesCard.dart';
import 'package:greeting_card_app/app/modules/home_page/views/videoImages.dart';
import 'package:greeting_card_app/app/routes/app_pages.dart';
import '../controllers/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  final List<String> temps = [
    'assets/templates/Birthday2147228853.png',
    'assets/templates/Anniversary2147228853.png',
    'assets/templates/Congratulation2147228853.png',
    'assets/templates/ThankYou2147228853.png',
  ];

  final List<String> videoImages = [
    'assets/videos_images/BirthdayWishes2147228791.png',
    'assets/videos_images/ThankYouNote2147228792.png',
    'assets/videos_images/Anniversary Suprise2147228793.png',
  ];

  HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F5FF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 210,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFEFE5FF),
                    Color(0xFFEAE6FF),
                    Color(0xFFEBDEF7),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Hello, Sarah! 👋',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 24,
                            color: Color(0xFF262640),
                          ),
                        ),

                        Icon(
                          Icons.notifications_none,
                          color: Color(0xFF5A00FF),
                        ),
                      ],
                    ),

                    Text(
                      'Ready to spread some joy?',
                      style: TextStyle(fontSize: 16, color: Color(0xFF767599)),
                    ),

                    SizedBox(height: 24),

                    SearchBar(
                      backgroundColor: WidgetStatePropertyAll(Colors.white),
                      elevation: WidgetStatePropertyAll(0),
                      hintText: 'Find a card you like',
                      hintStyle: WidgetStatePropertyAll(
                        TextStyle(color: Color(0xFF6B6B6B)),
                      ),

                      trailing: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF5A00FF),
                            ),
                            child: Icon(Icons.search, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 24),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Templates',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF262640),
                    ),
                  ),

                  InkWell(
                    onTap: () => Get.toNamed(Routes.ALL_TEMPLATES_PAGE),
                    child: Text(
                      'See all',
                      style: TextStyle(color: Color(0xFF767599)),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: temps.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.8,
                  crossAxisSpacing: 17,
                  mainAxisSpacing: 15,
                ),
                itemBuilder: (context, index) =>
                    Templatescard(temps: temps[index]),
              ),
            ),

            SizedBox(height: 24),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'My Recent Videos',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xFF262640),
                    ),
                  ),

                  Text('See all', style: TextStyle(color: Color(0xFF767599))),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: videoImages.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Videoimages(videoImages: videoImages[index]),
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

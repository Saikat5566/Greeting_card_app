import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greeting_card_app/app/modules/common_widget/custom_listview_builder.dart';
import 'package:greeting_card_app/app/modules/common_widget/custom_templates_gridview_builder.dart';
import 'package:greeting_card_app/app/routes/app_pages.dart';
import '../../common_widget/custom_bottom_navigation_bar.dart';
import '../../common_widget/custom_texts.dart';
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

                        InkWell(
                          onTap: () => Get.toNamed(Routes.NOTIFICATION),
                          child: Icon(
                            Icons.notifications_none,
                            color: Color(0xFF5A00FF),
                          ),
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

            InkWell(
              onTap: () => Get.toNamed(Routes.ALL_TEMPLATES_PAGE),
              child: CustomTexts(
                mainText: 'Popular Templates',
                subText: 'See all',
              ),
            ),
            TemplatesGridViewBuilder(allTemplates: temps),

            SizedBox(height: 24),

            CustomTexts(mainText: 'My Recent Videos', subText: 'See all'),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomListViewBuilder(
                libraryImages: videoImages,
                height: 78,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

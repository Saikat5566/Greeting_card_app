import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:greeting_card_app/app/modules/common_widget/custom_bottom_navigation_bar.dart';
import 'package:greeting_card_app/app/modules/common_widget/custom_header_nav_bar.dart';
import 'package:greeting_card_app/app/routes/app_pages.dart';

import '../../common_widget/custom_gridview_builder.dart';
import '../controllers/templates_gallery_page_controller.dart';

class TemplatesGalleryPageView extends GetView<TemplatesGalleryPageController> {
  final List<String> listOfTemplates = [
    'assets/template_lists/d77e5f88b687fcb6283b1fe82206081a20c15544.jpg',
    'assets/template_lists/cc893ebcbe010c6e18d952a75327a4fafc02c11a.jpg',
    'assets/template_lists/dea9d36bd79e25777de41771fedbe60570a8879e.jpg',
    'assets/template_lists/07272f0a6ac278cd8b05bfd2a23a72d6a289fc23.jpg',
    'assets/template_lists/4546ee3850b19b5a559ca6992584fd7931ef9ca4.jpg',
    'assets/template_lists/aba8b5c6341aa09e0587eebcea99e41a42585652.jpg',
  ];

  TemplatesGalleryPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Templates Gallery',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 24,
                color: Color(0xFF262640),
              ),
            ),

            Text(
              'Choose your perfect greeting card',
              style: TextStyle(fontSize: 16, color: Color(0xFF767599)),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 24),
              HeaderNavBar(),

              SizedBox(height: 16),

              GestureDetector(
                onTap: () => Get.toNamed(Routes.GRATIVID_CHOICE),
                child: CustomGridViewBuilder(listOfTemplates: listOfTemplates),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

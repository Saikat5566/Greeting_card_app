import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
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
              Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFFEBE0FF),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('All'),
                      Text('Birthday'),
                      Text('Thanks'),
                      Text('Love'),
                      Text('Holiday'),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 16),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.builder(
                  itemCount: listOfTemplates.length,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                    crossAxisSpacing: 13,
                  ),
                  itemBuilder: (context, index) => Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        height: 246,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(6),
                            topRight: Radius.circular(6),
                          ),
                        ),
                        child: Image.asset(listOfTemplates[index]),
                      ),

                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 58,
                            decoration: BoxDecoration(
                              color: Color(0xFFF5F0FF),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(6),
                                bottomLeft: Radius.circular(6),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              height: 34,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xFFEBE0FF),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.crown,
                                      color: Color(0xFF5A00FF),
                                    ),
                                    Text(
                                      '+10 Gratis',
                                      style: TextStyle(
                                        color: Color(0xFF5A00FF),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
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

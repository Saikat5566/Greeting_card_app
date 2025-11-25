import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/manage_package_page_controller.dart';

class ManagePackagePageView extends GetView<ManagePackagePageController> {
  final List<String> headerText = ['Basic', 'Pro', 'Enterprise'];

  final List<String> totalGratis = [
    'Total 100 Gratis',
    'Total 300 Gratis',
    'Total 500 Gratis',
  ];

  final List<String> prices = ['9.99', '14.99', '19.99'];

  ManagePackagePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Manage Package',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w800,
            color: Color(0xFF262640),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 24),
              Container(
                alignment: Alignment.topCenter,
                height: 174,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: LinearGradient(
                    colors: [Color(0xFFE2E0F5), Color(0xFFE4D4ED)],
                  ),
                  border: Border.all(color: Color(0xFFD7C2FF)),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 24),
                    Image.asset('assets/images/👑.png'),

                    SizedBox(height: 16),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Your remaining gratis',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF262640),
                            ),
                          ),

                          Text(
                            '40/100',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF262640),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 8),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Color(0xFFEBE0FF),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(right: 71),
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
                    ),
                  ],
                ),
              ),

              SizedBox(height: 22),

              ListView.builder(
                shrinkWrap: true,
                itemCount: headerText.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 22),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color(0xFFF5F0FF),
                      border: Border.all(color: Color(0xFFD7C2FF)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 16),
                          Text(
                            headerText[index],
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                              color: Color(0xFF262640),
                            ),
                          ),

                          Text(
                            totalGratis[index],
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF767599),
                            ),
                          ),

                          SizedBox(height: 16),

                          Text(
                           (prices[index]),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),

                          SizedBox(height: 14),

                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              minimumSize: Size(double.infinity, 52),
                              backgroundColor: Color(0xFF5A00FF),
                            ),
                            child: Text(
                              'Buy Now',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),

                          SizedBox(height: 20),
                        ],
                      ),
                    ),
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

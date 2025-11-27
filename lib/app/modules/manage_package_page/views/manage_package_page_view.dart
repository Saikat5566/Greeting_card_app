import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greeting_card_app/app/modules/common_widget/custom_bottom_navigation_bar.dart';
import '../../common_widget/custom_manage_package.dart';
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
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: LinearProgressIndicator(
                          color: Color(0xFF5A00FF),
                          minHeight: 8,
                          value: 0.4,
                          valueColor: AlwaysStoppedAnimation(Color(0xFF5A00FF)),
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 22),

              ManagePackageListView(
                headerText: headerText,
                totalGratis: totalGratis,
                prices: prices,
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/all_templates_page_controller.dart';

class AllTemplatesPageView extends GetView<AllTemplatesPageController> {
  final List<String> allTemplates = [
    'assets/templates/Birthday2147228853.png',
    'assets/templates/Anniversary2147228853.png',
    'assets/templates/ThankYou2147228853.png',
    'assets/templates/Congratulation2147228853.png',
    'assets/templates/WEDDING 2147228853.png',
    'assets/templates/FRIENDSHIP 2147228853.png',
    'assets/templates/LOVE 2147228853.png',
    'assets/templates/NEW BABY 2147228853.png',
    'assets/templates/RETIREMENT 2147228853.png',
    'assets/templates/GRADUATION 2147228853.png',
  ];

  AllTemplatesPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'All Templates',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w800,
            color: Color(0xFF262640),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: allTemplates.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                childAspectRatio: 1.5,
              ),
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                ),
                child: Image.asset(allTemplates[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

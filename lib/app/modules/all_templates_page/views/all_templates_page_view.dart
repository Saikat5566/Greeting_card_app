import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../common_widget/custom_templates_gridview_builder.dart';
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
      body: TemplatesGridViewBuilder(allTemplates: allTemplates),
    );
  }
}


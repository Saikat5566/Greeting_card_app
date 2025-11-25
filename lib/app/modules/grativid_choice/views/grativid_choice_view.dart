import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:greeting_card_app/app/modules/common_widget/custom_eleveted_button.dart';

import '../../common_widget/custom_grativid_container.dart';
import '../controllers/grativid_choice_controller.dart';

class GratividChoiceView extends GetView<GratividChoiceController> {
  final String images = Get.arguments;

  GratividChoiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Custom Grativid',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 24,
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 392,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Color(0xFFD7C2FF)),
                  ),
                  child: Image.asset(images),
                ),
              ),

              SizedBox(height: 16),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomElevetedButton(
                    text: 'Upload',
                    textColor: Color(0xFF5A00FF),
                    borderColor: Color(0xFF5A00FF),
                    icon: Icons.upload_outlined,
                    color: Colors.white,
                    buttonSize: Size(140, 46),
                    onPressed: () {},
                  ),
                  SizedBox(width: 15),
                  CustomElevetedButton(
                    text: 'Edit Text',
                    textColor: Color(0xFF5A00FF),
                    borderColor: Color(0xFF5A00FF),
                    icon: Icons.edit,
                    color: Colors.white,
                    buttonSize: Size(140, 46),
                    onPressed: () {},
                  ),
                ],
              ),

              SizedBox(height: 24),

              CustomGratividContainer(),

              SizedBox(height: 28),

              CustomElevetedButton(
                onPressed: () {},
                text: 'Save as Draft',
                color: Colors.white,
                buttonSize: Size(double.infinity, 52),
                borderColor: Color(0xFF5A00FF),
                textColor: Color(0xFF5A00FF),
              ),

              SizedBox(height: 16),

              CustomElevetedButton(
                onPressed: () {},
                text: 'Continue',
                textColor: Colors.white,
                color: Color(0xFF5A00FF),
                buttonSize: Size(double.infinity, 52),
              ),

              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:greeting_card_app/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends GetView<HomeController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () => Get.toNamed(Routes.FIRST_PAGE));

    return Scaffold(
      backgroundColor: Color(0xFFEFE5FF),
      body: Column(
        children: [
          SizedBox(height: 230),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 305,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF5A00FF).withOpacity(0.1),
                ),
              ),

              Container(
                height: 231,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF5A00FF).withOpacity(0.2),
                ),
              ),

              Container(
                height: 156,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/bf042504c8fdc2edd3feeea7a5e4ab188c7b7aa1.png',
                    ),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 100),

          SpinKitCircle(color: Color(0xFF5A00FF)),
        ],
      ),
    );
  }
}

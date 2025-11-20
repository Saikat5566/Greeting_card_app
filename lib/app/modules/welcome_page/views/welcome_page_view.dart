import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:greeting_card_app/app/routes/app_pages.dart';

import '../controllers/welcome_page_controller.dart';

class WelcomePageView extends GetView<WelcomePageController> {
  const WelcomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/images/Ellipse 20682.png'),
        
                Column(
                  children: [
                    SizedBox(height: 270),
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
              ],
            ),
        
            SizedBox(height: 33),
            Text(
              'Welcome',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 28,
                color: Color(0xFF262640),
              ),
            ),
        
            SizedBox(height: 8),
        
            Text(
              'Start customizing today and earn Gratis!',
              style: TextStyle(fontSize: 16, color: Color(0xFF767599)),
            ),
        
            SizedBox(height: 20),
        
            Icon(Icons.more_horiz, color: Color(0xFF2970FF), size: 30),
        
            ElevatedButton(
              onPressed: () => Get.toNamed(Routes.LOGIN_PAGE),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                backgroundColor: Colors.white,
                minimumSize: Size(335, 52),
                side: BorderSide(color: Color(0xFF5A00FF)),
              ),
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF5A00FF),
                ),
              ),
            ),
        
            SizedBox(height: 16,),
        
            ElevatedButton(
              onPressed: () => Get.toNamed(Routes.REGISTER_PAGE),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                backgroundColor: Color(0xFF5A00FF),
                minimumSize: Size(335, 52),
              ),
              child: Text(
                'Register',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),

            SizedBox(height: 25,)
          ],
        ),
      ),
    );
  }
}

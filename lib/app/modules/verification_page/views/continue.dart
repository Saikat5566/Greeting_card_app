import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../routes/app_pages.dart';

class Continue extends StatelessWidget {
  const Continue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      body: Center(
        child: Container(
          height: 314,
          width: 335,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Column(
            children: [
              SizedBox(height: 24,),
              Image.asset('assets/images/Frame 2147228650.png'),
              SizedBox(height: 24),
              RichText(
                text: TextSpan(
                  text: 'Account verified Successfully',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Color(0xFF262640),
                  ),
                ),
              ),

              SizedBox(height: 24),

              ElevatedButton(
                onPressed: () => Get.toNamed(Routes.LOGIN_PAGE),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(288, 52),
                  backgroundColor: Color(0xFF5A00FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Done',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

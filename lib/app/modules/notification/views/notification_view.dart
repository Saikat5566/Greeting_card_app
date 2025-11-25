import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:greeting_card_app/app/modules/common_widget/custom_profile_page.dart';

import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notifications',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 24,
            color: Color(0xFF262640),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 24),
              ProfileDecoration(
                height: 122,
                text: 'Lorem Ipsum',
                leftIcon: CupertinoIcons.bell_circle_fill,
                rightIcon: Icons.delete_forever_outlined,
                subText:
                    'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit.',
                time: '5:45',
                rightIconColor: Color(0xFFDC3545),
              ),
              SizedBox(height: 16),
              ProfileDecoration(
                height: 122,
                text: 'Lorem Ipsum',
                leftIcon: CupertinoIcons.bell_circle_fill,
                rightIcon: Icons.delete_forever_outlined,
                subText:
                    'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit.',
                time: '5:45',
                rightIconColor: Color(0xFFDC3545),
              ),
              SizedBox(height: 16),
              ProfileDecoration(
                height: 122,
                text: 'Lorem Ipsum',
                leftIcon: CupertinoIcons.bell_circle_fill,
                rightIcon: Icons.delete_forever_outlined,
                subText:
                    'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit.',
                time: '5:45',
                rightIconColor: Color(0xFFDC3545),
              ),
              SizedBox(height: 16),
              ProfileDecoration(
                height: 122,
                text: 'Lorem Ipsum',
                leftIcon: CupertinoIcons.bell_circle_fill,
                rightIcon: Icons.delete_forever_outlined,
                subText:
                    'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit.',
                time: '5:45',
                rightIconColor: Color(0xFFDC3545),
              ),
              SizedBox(height: 16),
              ProfileDecoration(
                height: 122,
                text: 'Lorem Ipsum',
                leftIcon: CupertinoIcons.bell_circle_fill,
                rightIcon: Icons.delete_forever_outlined,
                subText:
                    'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit.',
                time: '5:45',
                rightIconColor: Color(0xFFDC3545),
              ),
              SizedBox(height: 16),
              ProfileDecoration(
                height: 122,
                text: 'Lorem Ipsum',
                leftIcon: CupertinoIcons.bell_circle_fill,
                rightIcon: Icons.delete_forever_outlined,
                subText:
                    'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit.',
                time: '5:45',
                rightIconColor: Color(0xFFDC3545),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

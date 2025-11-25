import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../routes/app_pages.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

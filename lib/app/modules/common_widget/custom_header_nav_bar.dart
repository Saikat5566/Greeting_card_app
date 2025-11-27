import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:greeting_card_app/app/routes/app_pages.dart';

class HeaderNavBar extends StatefulWidget {
  HeaderNavBar({super.key});

  @override
  State<HeaderNavBar> createState() => _HeaderNavBarState();
}

class _HeaderNavBarState extends State<HeaderNavBar> {
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Color(0xFFEBE0FF),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedItem = 0;
                });

              },
              child: Container(
                alignment: Alignment.center,
                height: 32,
                width: 83,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: selectedItem == 0 ? Colors.white : Colors.transparent,
                ),
                child: Text(textAlign: TextAlign.center, 'All'),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedItem = 1;
                });
              },
              child: Container(
                alignment: Alignment.center,
                height: 32,
                width: 83,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: selectedItem == 1 ? Colors.white : Colors.transparent,
                ),
                child: Text('Sent'),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedItem = 2;
                });
              },
              child: Container(
                alignment: Alignment.center,
                height: 32,
                width: 83,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: selectedItem == 2 ? Colors.white : Colors.transparent,
                ),
                child: Text('Schedule'),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedItem = 3;
                });
              },
              child: Container(
                alignment: Alignment.center,
                height: 32,
                width: 83,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: selectedItem == 3 ? Colors.white : Colors.transparent,
                ),
                child: Text('Draft'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

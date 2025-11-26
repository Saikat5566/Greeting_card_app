import 'package:flutter/material.dart';
import 'package:greeting_card_app/app/modules/Thankyou/views/thankyou_view.dart';
import 'package:greeting_card_app/app/modules/anniversary/views/anniversary_view.dart';
import 'package:greeting_card_app/app/modules/birthday/views/birthday_view.dart';
import 'package:greeting_card_app/app/modules/congratulation/views/congratulation_view.dart';
import 'package:greeting_card_app/app/modules/friendship/views/friendship_view.dart';
import 'package:greeting_card_app/app/modules/graduation/views/graduation_view.dart';
import 'package:greeting_card_app/app/modules/love/views/love_view.dart';
import 'package:greeting_card_app/app/modules/new_baby/views/new_baby_view.dart';
import 'package:greeting_card_app/app/modules/retirement/views/retirement_view.dart';
import 'package:greeting_card_app/app/modules/wedding/views/wedding_view.dart';

class TemplatesGridViewBuilder extends StatelessWidget {
  TemplatesGridViewBuilder({super.key, required this.allTemplates});

  final List<String> allTemplates;
  final List<Widget> pages = [
    BirthdayView(),
    AnniversaryView(),
    ThankyouView(),
    CongratulationView(),
    WeddingView(),
    FriendshipView(),
    LoveView(),
    NewBabyView(),
    RetirementView(),
    GraduationView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            itemBuilder: (context, index) => GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return pages[index];
                  },
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  border: Border.all(color: Color(0xFFD7C2FF)),
                ),
                child: Image.asset(allTemplates[index]),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

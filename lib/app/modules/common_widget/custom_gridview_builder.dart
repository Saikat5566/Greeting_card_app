import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../routes/app_pages.dart';

class CustomGridViewBuilder extends StatelessWidget {
  const CustomGridViewBuilder({super.key, required this.listOfTemplates});

  final List<String> listOfTemplates;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        itemCount: listOfTemplates.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 13,
          mainAxisSpacing: 13,
        ),
        itemBuilder: (context, index) {
          final image = listOfTemplates[index];

          return GestureDetector(
            onTap: () {
              Get.toNamed(Routes.GRATIVID_CHOICE, arguments: image);
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Color(0xFFD7C2FF)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Image.asset(listOfTemplates[index], height: 178, width: 170),

                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 58,
                        decoration: BoxDecoration(
                          color: Color(0xFFF5F0FF),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          height: 34,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color(0xFFEBE0FF),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesomeIcons.crown,
                                size: 15,
                                color: Color(0xFF5A00FF),
                              ),
                              SizedBox(width: 8),
                              Text(
                                '+10 Gratis',
                                style: TextStyle(color: Color(0xFF5A00FF)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

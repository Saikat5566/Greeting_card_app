import 'package:flutter/material.dart';

class TemplatesGridViewBuilder extends StatelessWidget {
  const TemplatesGridViewBuilder({
    super.key,
    required this.allTemplates,
  });

  final List<String> allTemplates;

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
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
                border: Border.all(color: Color(0xFFD7C2FF)),
              ),
              child: Image.asset(allTemplates[index]),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class CustomTexts extends StatelessWidget {
  final String mainText;
  final String subText;

  const CustomTexts({super.key, required this.mainText, required this.subText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
           mainText,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Color(0xFF262640),
            ),
          ),

          Text(subText, style: TextStyle(color: Color(0xFF767599))),
        ],
      ),
    );
  }
}

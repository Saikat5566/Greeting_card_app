import 'package:flutter/material.dart';
import 'package:greeting_card_app/app/data/color/app_color.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final String hintText;
  final Widget icon;
  final Widget? suffixIcon;

  const CustomTextField({
    super.key,
    required this.text,
    required this.hintText,
    required this.icon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          textAlign: TextAlign.start,
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xFF262640),
          ),
        ),
        SizedBox(height: 6),
        TextFormField(
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            prefixIcon: icon,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFE5E7EC)),
            ),
            hintText: hintText,
            hintStyle: TextStyle(color: Color(0xFF767599)),
            suffixIcon: suffixIcon,
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

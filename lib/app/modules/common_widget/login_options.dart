import 'package:flutter/material.dart';

class LoginOptions extends StatelessWidget {
  const LoginOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 56,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color(0xFFF0F0F0),
            image: DecorationImage(
              image: AssetImage('assets/images/Google.png'),
            ),
          ),
        ),

        Container(
          height: 56,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color(0xFFF0F0F0),
            image: DecorationImage(
              image: AssetImage('assets/images/Apple.png'),
            ),
          ),
        ),

        Container(
          height: 56,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color(0xFFF0F0F0),
            image: DecorationImage(
              image: AssetImage('assets/images/Facebook.png'),
            ),
          ),
        ),
      ],
    );
  }
}

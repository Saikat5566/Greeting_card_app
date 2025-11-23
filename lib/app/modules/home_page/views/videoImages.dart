import 'package:flutter/material.dart';

class Videoimages extends StatelessWidget {
  final String videoImages;

  const Videoimages({super.key, required this.videoImages});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xFFD7C2FF),
      ),
      child: Image.asset(videoImages),
    );
  }
}

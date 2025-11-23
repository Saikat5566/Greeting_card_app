import 'package:flutter/material.dart';

class Templatescard extends StatelessWidget {
  final String temps;

  Templatescard({super.key, required this.temps});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white
      ),
      child: Image.asset(temps),
    );
  }
}

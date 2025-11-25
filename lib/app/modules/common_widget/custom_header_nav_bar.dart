import 'package:flutter/material.dart';

class HeaderNavBar extends StatelessWidget {
  const HeaderNavBar({
    super.key,
  });

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
            Text('All'),
            Text('Sent'),
            Text('Schedule'),
            Text('Draft'),
          ],
        ),
      ),
    );
  }
}


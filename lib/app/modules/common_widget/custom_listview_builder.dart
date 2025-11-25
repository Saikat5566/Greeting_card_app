import 'package:flutter/material.dart';

class CustomListViewBuilder extends StatelessWidget {
  final double? height;

  const CustomListViewBuilder({
    super.key,
    required this.libraryImages, this.height,

  });

  final List<String> libraryImages;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: libraryImages?.length,
      shrinkWrap: true,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.only(bottom: 12),
        child: Container(
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(0xFFF5F0FF),
            border: Border.all(color: Color(0xFFD7C2FF)),
          ),
          child: Image.asset(libraryImages[index]),
        ),
      ),
    );
  }
}

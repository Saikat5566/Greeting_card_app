import 'package:flutter/material.dart';

import 'custom_eleveted_button.dart';

class ManagePackageListView extends StatelessWidget {
  const ManagePackageListView({
    super.key,
    required this.headerText,
    required this.totalGratis,
    required this.prices,
  });

  final List<String> headerText;
  final List<String> totalGratis;
  final List<String> prices;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: headerText.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 22),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(0xFFF5F0FF),
            border: Border.all(color: Color(0xFFD7C2FF)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16),
                Text(
                  headerText[index],
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: Color(0xFF262640),
                  ),
                ),

                Text(
                  totalGratis[index],
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF767599),
                  ),
                ),

                SizedBox(height: 16),

                Text(
                  (prices[index]),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),

                SizedBox(height: 14),

                CustomElevetedButton(
                  text: 'Buy Now',
                  color: Color(0xFF5A00FF),
                  textColor: Colors.white,
                  buttonSize: Size(double.infinity, 52),
                  onPressed: () {},
                ),

                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

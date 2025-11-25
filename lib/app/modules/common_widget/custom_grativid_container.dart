import 'package:flutter/material.dart';

class CustomGratividContainer extends StatelessWidget {
  const CustomGratividContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 477,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Color(0xFFD7C2FF)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),

            Text(
              'Message',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),

            SizedBox(height: 12),

            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Color(0xFFF5F0FF),
                border: Border.all(color: Color(0xFFEBE0FF)),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 16, top: 12),
                child: Text(
                  'Write your heartfelt message\nhere... e.g., Happy Birthday!\nWishing you all the love and joy\ntoday brings. You mean the\nworld to me!',
                  style: TextStyle(color: Color(0xFF767599)),
                ),
              ),
            ),

            SizedBox(height: 13),

            Text(
              '0/500 characters',
              style: TextStyle(color: Color(0xFF767599)),
            ),

            SizedBox(height: 20),

            Text(
              'Quick Messages',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Color(0xFF403126),
              ),
            ),

            SizedBox(height: 8),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 36,
                      width: 138,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Color(0xFFF5F0FF),
                        border: Border.all(color: Color(0xFFEBE0FF)),
                      ),
                      child: Text(
                        'Happy Birthday!',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      alignment: Alignment.center,
                      height: 36,
                      width: 101,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Color(0xFFF5F0FF),
                        border: Border.all(color: Color(0xFFEBE0FF)),
                      ),
                      child: Text(
                        'Love you!',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Container(
                  alignment: Alignment.center,
                  height: 36,
                  width: 162,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Color(0xFFF5F0FF),
                    border: Border.all(color: Color(0xFFEBE0FF)),
                  ),
                  child: Text(
                    'Thank you so much!',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  alignment: Alignment.center,
                  height: 36,
                  width: 141,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Color(0xFFF5F0FF),
                    border: Border.all(color: Color(0xFFEBE0FF)),
                  ),
                  child: Text(
                    'Congratulations',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

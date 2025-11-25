import 'package:flutter/material.dart';

class ProfileDecoration extends StatelessWidget {
  final double height;
  final String text;
  final IconData leftIcon;
  final IconData rightIcon;
  final String? subText;
  final String? time;
  final Color? rightIconColor;

  const ProfileDecoration({
    super.key,
    required this.height,
    required this.text,
    required this.leftIcon,
    required this.rightIcon,
    this.subText,
    this.time, this.rightIconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color(0xFFF5F0FF),
            border: Border.all(color: Color(0xFFD7C2FF)),
          ),

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(leftIcon, color: Color(0xFF5A00FF)),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          text,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        subText != null
                            ? Text(
                                subText!,
                                style: TextStyle(color: Color(0xFF767599)),
                              )
                            : SizedBox(),

                        time != null
                            ? Text(
                                time!,
                                style: TextStyle(color: Color(0xFF949494)),
                              )
                            : SizedBox(),
                      ],
                    ),
                  ],
                ),
                Icon(rightIcon, color: rightIconColor),
              ],
            ),
          ),
        ),

      ],
    );
  }
}

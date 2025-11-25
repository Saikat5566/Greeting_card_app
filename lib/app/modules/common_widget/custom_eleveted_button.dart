import 'package:flutter/material.dart';

class CustomElevetedButton extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  final Color? color;
  final Color? textColor;
  final IconData? icon;
  final Color? borderColor;
  final Size? buttonSize;

  const CustomElevetedButton({
    super.key,
    this.onPressed,
    required this.text,
    this.color,
    this.textColor,
    this.icon,
    this.borderColor,
    this.buttonSize,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        side: BorderSide(color: borderColor ?? Colors.transparent),
        backgroundColor: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        minimumSize: //Size(double.infinity, 52),
            buttonSize,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: textColor),

          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}

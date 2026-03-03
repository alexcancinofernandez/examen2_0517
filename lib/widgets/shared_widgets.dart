import 'package:flutter/material.dart';

// --- App Colors & Styles ---
const Color lightBlueColor = Color(0xFF64B5F6);
const Color greenColor = Color(0xFF81C784);
const Color greyButtonColor = Color(0xFFE0E0E0);
const Color borderColor = Color(0xFFBDBDBD);

// --- Helper Widget: Custom App Bar ---
PreferredSizeWidget buildCustomAppBar({
  required BuildContext context,
  required String leftText,
  required VoidCallback onLeftPressed,
  required String centerTopText,
  required String centerBottomText,
  required String rightText,
  required VoidCallback onRightPressed,
}) {
  return AppBar(
    automaticallyImplyLeading: false, 
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: onLeftPressed,
          child: Text(
            leftText,
            style: const TextStyle(color: lightBlueColor, fontSize: 16),
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              centerTopText,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              centerBottomText,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: lightBlueColor, width: 1.5),
            borderRadius: BorderRadius.circular(6),
          ),
          child: InkWell(
            onTap: onRightPressed,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
              child: Text(
                rightText,
                style: const TextStyle(color: lightBlueColor, fontSize: 14),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
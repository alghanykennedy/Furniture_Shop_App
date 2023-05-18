import 'package:flutter/material.dart';
import 'package:furniture_shop/core/utils/color.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 386,
      height: 48,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorConstant.grey500, // change the background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24), // set the border radius
          ),
        ),
        child: Text(text),
      ),
    );
  }
}

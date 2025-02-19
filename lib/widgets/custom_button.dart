import 'package:e_commerce/const/all_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String title;
  double size;
  VoidCallback onTap;

  CustomButton({required this.title, required this.size, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AllColors.primaryColor,
          borderRadius: BorderRadius.circular(10.0)),
      child: Text(
        title,
        style: TextStyle(
          color: AllColors.whiteColor,
          fontSize: size,
        ),
      ),
    );
  }
}

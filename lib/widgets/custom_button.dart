import 'package:e_commerce/const/all_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String title;
  double size;
  double height;
  double width;
  VoidCallback onTap;

  CustomButton(
      {required this.title,
      required this.size,
      required this.height,
      required this.width,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: AllColors.primaryColor,
            borderRadius: BorderRadius.circular(10.0)),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: AllColors.whiteColor,
              fontSize: size,
            ),
          ),
        ),
      ),
    );
  }
}

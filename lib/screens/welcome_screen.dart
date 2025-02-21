import 'package:e_commerce/const/all_colors.dart';
import 'package:e_commerce/const/all_sizes.dart';
import 'package:e_commerce/const/all_styles.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 40.0,
          left: 12.0,
          right: 12.0,
          bottom: 30.0,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset("assets/images/welcome.png"),
            ),
            Text(
              "Discover Your",
              style: AllStyles.headingTextStyle,
            ),
            Text(
              "Dream Job here",
              style: AllStyles.headingTextStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Explore all the existing job roles based on your interest and study major",
              style: AllStyles.subtitleTextStyle
                  .copyWith(fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomButton(
                    title: "Login",
                    size: AllSizes.large,
                    height: 45.0,
                    width: 100.0,
                    onTap: () {}),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Register",
                    style: TextStyle(fontSize: 16.0),
                  ),
                  style: TextButton.styleFrom(
                      foregroundColor: AllColors.blackColor),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

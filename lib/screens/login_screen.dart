import 'package:e_commerce/const/all_colors.dart';
import 'package:e_commerce/const/all_sizes.dart';
import 'package:e_commerce/const/all_styles.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.0,
            ),
            CircleAvatar(
              backgroundColor: AllColors.secondaryColor,
              child: Icon(Icons.arrow_back),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Login here",
                    style: AllStyles.headingTextStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Welcome back you've",
                    style: AllStyles.titleTextStyle,
                  ),
                  Text(
                    "been missed!",
                    style: AllStyles.titleTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: AllColors.primaryColor.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(8.0)),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "E-mail",
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                    color: AllColors.transparentColor),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                    color: AllColors.primaryColor, width: 2.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: AllColors.primaryColor.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(8.0)),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Password",
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                    color: AllColors.transparentColor),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                    color: AllColors.primaryColor, width: 2.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Forgot your password",
                            style: AllStyles.subtitleTextStyle.copyWith(
                              color: AllColors.primaryColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        CustomButton(
                            title: "Sign In",
                            size: AllSizes.large,
                            height: 45.0,
                            width: MediaQuery.of(context).size.width,
                            onTap: () {}),
                        SizedBox(
                          height: 40.0,
                        ),
                        Text(
                          "Create a new account",
                          style: AllStyles.subtitleTextStyle,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

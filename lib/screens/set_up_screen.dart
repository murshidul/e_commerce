import 'package:e_commerce/const/all_colors.dart';
import 'package:e_commerce/const/all_sizes.dart';
import 'package:e_commerce/const/all_styles.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SetUpScreen extends StatelessWidget {
  const SetUpScreen({super.key});

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
                    "Profile Setup",
                    style: AllStyles.headingTextStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Please Fill be below details to complete",
                    style: AllStyles.subtitleTextStyle.copyWith(),
                  ),
                  Text(
                    "Your Profile",
                    style: AllStyles.subtitleTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 120.0,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: AllColors.primaryColor,
                            width: 1.5,
                          ),
                        ),
                        child: Icon(
                          Icons.person,
                          size: 100.0,
                          color: Colors.grey,
                        ),
                      ),
                      Positioned(
                        top: 70.0,
                        left: 95.0,
                        child: Container(
                          height: 30.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              color: AllColors.primaryColor,
                              width: 1.5,
                            ),
                          ),
                          child: Icon(
                            Icons.camera_alt,
                            size: 20.0,
                            color: Colors.grey,
                          ),
                        ),
                      )
                    ],
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
                              hintText: "Full Name",
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
                              hintText: "Address",
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
                              hintText: "Phone Number",
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
                        SizedBox(
                          height: 50,
                        ),
                        CustomButton(
                            title: "Complete Set Up",
                            size: AllSizes.large,
                            height: 45.0,
                            width: MediaQuery.of(context).size.width,
                            onTap: () {}),
                        SizedBox(
                          height: 40.0,
                        ),
                        Text(
                          "Already have an account",
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

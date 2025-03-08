import 'package:e_commerce/const/all_colors.dart';
import 'package:e_commerce/const/all_sizes.dart';
import 'package:e_commerce/const/all_styles.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class AddToCartScreen extends StatefulWidget {
  AddToCartScreen({super.key});

  @override
  State<AddToCartScreen> createState() => _AddToCartScreenState();
}

class _AddToCartScreenState extends State<AddToCartScreen> {
  int selected = -1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: AllColors.secondaryColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: AllColors.secondaryColor,
                width: size.width,
                height: 220.0,
                child: Image.asset("assets/images/watch.png"),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  bottom: 20.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Apple Watch Series 6",
                      style: AllStyles.titleTextStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 20.0,
                      width: size.width,
                      child: ratingBuilder(5),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Image.asset("assets/images/cross_n.png"),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                "45000",
                                style: AllStyles.titleTextStyle
                                    .copyWith(color: Colors.black),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Image.asset("assets/images/small_cross.png"),
                              Text(
                                "45,000",
                                style: TextStyle(
                                    color: Color(0xffAfAFAF),
                                    fontSize: 14.0,
                                    decoration: TextDecoration.lineThrough),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Available in Stock",
                            style: AllStyles.subtitleTextStyle,
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Text(
                      "About",
                      style: AllStyles.titleTextStyle,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "The upgraded S6 SiP runs up to 20 percent faster, allowing apps to also launch 20 percent faster, while maintaining the same all-day 18-hour battery life.",
                      style: AllStyles.subtitleTextStyle.copyWith(
                        color: AllColors.blackColor.withOpacity(0.6),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        selected == 0
                            ? selectedNumber("0")
                            : unselectedNumber("0"),
                        selected == 1
                            ? selectedNumber("1")
                            : unselectedNumber("0"),
                        selected == 2
                            ? selectedNumber("2")
                            : unselectedNumber("0"),
                        selected == 3
                            ? selectedNumber("3")
                            : unselectedNumber("0"),
                        selected == 4
                            ? selectedNumber("4")
                            : unselectedNumber("0"),
                        selected == 5
                            ? selectedNumber("5")
                            : unselectedNumber("0"),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CustomButton(
                      title: "Add to Cart",
                      size: AllSizes.medium,
                      height: 45,
                      width: size.width,
                      onTap: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget ratingBuilder(int rating) {
    return ListView.builder(
      itemCount: rating,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Icon(
          Icons.star,
          color: AllColors.starColor,
        );
      },
    );
  }

  Widget unselectedNumber(String number) {
    return InkWell(
      onTap: () {
        setState(() {
          selected = int.parse(number);
        });
      },
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.transparent,
          border: Border.all(
            color: Colors.grey.withOpacity(0.6),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          number,
          style: TextStyle(color: Colors.black, fontSize: 22.0),
        ),
      ),
    );
  }

  Widget selectedNumber(String number) {
    return InkWell(
      onTap: () {
        setState(() {
          selected = int.parse(number);
        });
      },
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: AllColors.primaryColor,
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(color: Colors.transparent),
        ),
        alignment: Alignment.center,
        child: Text(
          number,
          style: TextStyle(color: Colors.white, fontSize: 22.0),
        ),
      ),
    );
  }
}

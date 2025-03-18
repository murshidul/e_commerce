import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/const/all_colors.dart';
import 'package:e_commerce/const/all_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 70.0, left: 12.0, right: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello Fola!!",
                style: AllStyles.titleTextStyle,
              ),
              Text("Let's Start Shopping"),
              SizedBox(
                height: 20.0,
              ),
              CarouselSlider.builder(
                itemCount: 3,
                options: CarouselOptions(height: 130.0, viewportFraction: 0.7),
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Container(
                    height: 130.0,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: AllColors.primaryColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 120.0,
                          width: 150.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "20% OFF DURING THE WEEKEND",
                                  style: AllStyles.titleTextStyle.copyWith(
                                      fontSize: 16.0,
                                      color: AllColors.whiteColor),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50.0),
                                      color: AllColors.whiteColor,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Get Now"),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Image.asset("assets/images/t-shirt.png"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Categories",
                    style: AllStyles.titleTextStyle,
                  ),
                  Text(
                    "See All",
                    style: TextStyle(color: AllColors.primaryColor),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 70,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Container(
                          width: 70.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                                color: Color(0xff08030380), width: 1.5),
                            color: Colors.grey.withOpacity(0.8),
                          ),
                          child: Icon(
                            Icons.shopping_cart,
                            size: 40.0,
                            color: Colors.grey,
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 13.0,
              ),
              SizedBox(
                child: GridView.builder(
                  shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      childAspectRatio: 5 / 7,
                    ),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return itemView();
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget itemView() {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: AllColors.secondaryColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13.0),
                  color: AllColors.whiteColor,
                ),
                child: Text(
                  "40% OFF",
                  style: AllStyles.subtitleTextStyle,
                ),
              ),
              Container(
                height: 35.0,
                width: 35.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(
                      color: Colors.grey.withOpacity(0.8), width: 2.0),
                ),
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Image.asset(
            "assets/images/watch.png",
            height: 120.0,
            width: 120.0,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Redmi Note 4",
              style: TextStyle(
                color: AllColors.blackColor.withOpacity(0.7),
                fontSize: 16.0,
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            children: [
              Image.asset(
                "assets/images/cross_n.png",
                height: 20.0,
                width: 20.0,
              ),
              Text(
                "1000",
                style: AllStyles.subtitleTextStyle,
              ),
            ],
          )
        ],
      ),
    );
  }
}

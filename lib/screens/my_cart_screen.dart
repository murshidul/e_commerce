import 'package:e_commerce/const/all_colors.dart';
import 'package:e_commerce/const/all_sizes.dart';
import 'package:e_commerce/const/all_styles.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("My Cart"),
        elevation: 0.0,
        backgroundColor: AllColors.transparentColor,
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, Index) {
                  return _cartView();
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30.0, right: 30.0, bottom: 20.0),
              height: 120,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                          child: Text(
                        "Total",
                        style: AllStyles.subtitleTextStyle,
                      )),
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            "assets/images/cross_n.png",
                            height: 20.0,
                            width: 20.0,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "54753456",
                            style: AllStyles.subtitleTextStyle,
                          )
                        ],
                      ))
                    ],
                  ),
                  SizedBox(
                    height: 27,
                  ),
                  CustomButton(
                    title: "Buy Now",
                    size: AllSizes.medium,
                    height: 40.0,
                    width: Get.width,
                    onTap: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _cartView() {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 10.0),
      child: Container(
        decoration: BoxDecoration(
            color: AllColors.secondaryColor,
            borderRadius: BorderRadius.circular(10.0)),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Image.asset("assets/images/watch.png"),
            ),
            Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Appe W-Series 6",
                      style: TextStyle(overflow: TextOverflow.ellipsis),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/cross_n.png",
                          height: 20.0,
                          width: 20.0,
                        ),
                        SizedBox(
                          width: 3.0,
                        ),
                        Text(
                          "78654545",
                          style: AllStyles.subtitleTextStyle,
                        )
                      ],
                    )
                  ],
                )),
            Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Text("Size:${33}"),
                    SizedBox(
                      height: 3.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          border: Border.all(color: AllColors.primaryColor)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.remove,
                            size: 16.0,
                            color: AllColors.primaryColor,
                          ),
                          Text("8"),
                          Icon(
                            Icons.add,
                            size: 16.0,
                            color: AllColors.primaryColor,
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

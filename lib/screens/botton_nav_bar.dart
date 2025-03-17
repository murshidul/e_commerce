import 'package:e_commerce/const/all_colors.dart';
import 'package:e_commerce/screens/cart_screen.dart';
import 'package:e_commerce/screens/favourite_screen.dart';
import 'package:e_commerce/screens/home_screen.dart';
import 'package:e_commerce/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class BottonNavBarScreen extends StatefulWidget {
  const BottonNavBarScreen({super.key});

  @override
  State<BottonNavBarScreen> createState() => _BottonNavBarState();
}

class _BottonNavBarState extends State<BottonNavBarScreen> {
  List<Widget> pages = [
    HomeScreen(),
    FavouriteScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: AllColors.primaryColor,
        unselectedItemColor: AllColors.blackColor.withOpacity(0.5),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: "Favourite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: pages[_currentIndex],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/constants/colors.dart';
import 'package:flutter_ecommerce/common/constants/images.dart';
import 'package:flutter_ecommerce/presentation/cart/cart_page.dart';
import 'package:flutter_ecommerce/presentation/explore/explore_page.dart';
import 'package:flutter_ecommerce/presentation/home/home_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int currentIndex = 0;

  List<Widget> pages = [
    const HomePage(),
    const ExplorePage(),
    const CartPage(),
    const Center(
      child: Text('Account Page'),
    )
  ];

  void setCurrentIndex(int value) {
    setState(() {
      currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: setCurrentIndex,
        elevation: 10.0,
        selectedItemColor: ColorName.primary,
        iconSize: 22,
        unselectedItemColor: ColorName.grey,
        selectedFontSize: 14,
        unselectedFontSize: 12,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(
                bottom: 3,
              ),
              child: const ImageIcon(
                AssetImage(Images.iconHome),
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(
                bottom: 3,
              ),
              child: const ImageIcon(
                AssetImage(Images.iconSearch),
              ),
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(
                bottom: 3,
              ),
              child: const ImageIcon(
                AssetImage(Images.iconCart),
              ),
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(
                bottom: 3,
              ),
              child: const ImageIcon(
                AssetImage(Images.iconUser),
              ),
            ),
            label: 'Account',
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(Icons.add),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce/common/constants/colors.dart';
import 'package:flutter_ecommerce/common/constants/images.dart';
import 'package:flutter_ecommerce/presentation/account/account_page.dart';
import 'package:flutter_ecommerce/presentation/cart/cart_page.dart';
import 'package:flutter_ecommerce/presentation/explore/explore_page.dart';
import 'package:flutter_ecommerce/presentation/home/bloc/products/products_bloc.dart';
import 'package:flutter_ecommerce/presentation/home/home_page.dart';
import 'package:flutter_ecommerce/presentation/payment/payment_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int currentIndex = 0;
  late ProductsBloc productsBloc;

  List<Widget> pages = [
    const HomePage(),
    const PaymentPage(),
    const CartPage(),
    const AccountPage(),
  ];

  @override
  void initState() {
    super.initState();
    /* cara 1 */
    // productsBloc = BlocProvider.of<ProductsBloc>(context);
    // productsBloc.add(const ProductsEvent.getAll());

    /* cara 2 */
    context.read<ProductsBloc>().add(const ProductsEvent.getAll());
  }

  void setCurrentIndex(int value) {
    setState(() {
      currentIndex = value;
    });
  }

  List<Map<String, dynamic>> barItem = [
    {'icon': Images.iconHome, 'label': 'Home'},
    {'icon': Images.iconSearch, 'label': 'Explore'},
    {'icon': Images.iconCart, 'label': 'Cart'},
    {'icon': Images.iconUser, 'label': 'Account'},
  ];

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

        /* Otomatis dengan cara mapping item nya */
        items: barItem.map((e) {
          return BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(
                bottom: 3,
              ),
              child: ImageIcon(
                AssetImage(e['icon']),
              ),
            ),
            label: e['label'],
          );
        }).toList(),

        /* Manual */

        // items: [
        //   BottomNavigationBarItem(
        //     icon: Container(
        //       margin: const EdgeInsets.only(
        //         bottom: 3,
        //       ),
        //       child: const ImageIcon(
        //         AssetImage(Images.iconHome),
        //       ),
        //     ),
        //     label: 'Home',
        //   ),
        //   BottomNavigationBarItem(
        //     icon: Container(
        //       margin: const EdgeInsets.only(
        //         bottom: 3,
        //       ),
        //       child: const ImageIcon(
        //         AssetImage(Images.iconSearch),
        //       ),
        //     ),
        //     label: 'Explore',
        //   ),
        //   BottomNavigationBarItem(
        //     icon: Container(
        //       margin: const EdgeInsets.only(
        //         bottom: 3,
        //       ),
        //       child: const ImageIcon(
        //         AssetImage(Images.iconCart),
        //       ),
        //     ),
        //     label: 'Cart',
        //   ),
        //   BottomNavigationBarItem(
        //     icon: Container(
        //       margin: const EdgeInsets.only(
        //         bottom: 3,
        //       ),
        //       child: const ImageIcon(
        //         AssetImage(Images.iconUser),
        //       ),
        //     ),
        //     label: 'Account',
        //   ),
        // ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(Icons.add),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

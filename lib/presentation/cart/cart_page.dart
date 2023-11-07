import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> myLists = List.generate(
        100, (index) => {'index': index, 'name': 'name is $index'});
    return const Scaffold(
      body: SafeArea(
          child: Center(
        child: Text('Cart'),
      )),
    );
  }
}

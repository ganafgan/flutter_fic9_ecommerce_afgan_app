import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/components/space_height.dart';
import 'package:flutter_ecommerce/common/constants/colors.dart';
import 'package:flutter_ecommerce/common/constants/images.dart';
import 'package:flutter_ecommerce/presentation/cart/widget/cart_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    // final List<Map> myProducts =
    //     List.generate(100, (index) => {'id': index, 'name': 'Product $index'})
    //         .toList();
    // List<CartModel> carts = [
    //   CartModel(
    //     id: 1,
    //     imagePath: Images.fashion1,
    //     name: 'Satu',
    //     price: 550000,
    //   ),
    //   CartModel(
    //     id: 2,
    //     imagePath: Images.fashion2,
    //     name: 'Dua',
    //     price: 750000,
    //   ),
    // ];
    return const Scaffold(
      body: SafeArea(
          // child: ListView(
          //   padding: EdgeInsets.symmetric(
          //     horizontal: 16.w,
          //   ),
          //   children: [
          //     SpaceHeight(20.h),
          //     const Text('Explore Page'),
          //     Expanded(
          //       child: GridView.builder(
          //         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //           crossAxisCount: 2,
          //           mainAxisSpacing: 10,
          //           crossAxisSpacing: 10,
          //           childAspectRatio: 3/4,
          //         ),
          //         /* tambahkan ini ketika running ListView Builder didalam ListView */
          //         shrinkWrap: true,
          //         physics: const NeverScrollableScrollPhysics(),
          //         itemCount: myProducts.length,
          //         itemBuilder: (context, index) {
          //           return Container(
          //             decoration: BoxDecoration(
          //               color: ColorName.primary,
          //               borderRadius: BorderRadius.circular(10),
          //             ),
          //             child: Text(myProducts[index]['name']),
          //           );
          //         },
          //       ),
          //     )
          //   ],
          // ),
          child: Column(
        children: [
          Text('Kosong'),
          Text('Ada'),
          Text('sasasas'),
        ],
      )),
    );
  }
}

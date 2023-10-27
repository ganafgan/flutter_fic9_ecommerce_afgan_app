import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/components/space_height.dart';
import 'package:flutter_ecommerce/common/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map> myProducts =
        List.generate(100, (index) => {'id': index, 'name': 'Product $index'})
            .toList();

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
          ),
          children: [
            SpaceHeight(20.h),
            const Text('Explore Page'),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 3/4,
                ),
                /* tambahkan ini ketika running ListView Builder didalam ListView */
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: myProducts.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: ColorName.primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(myProducts[index]['name']),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

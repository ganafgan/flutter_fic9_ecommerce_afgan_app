import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/components/search_input.dart';
import 'package:flutter_ecommerce/common/components/space_height.dart';
import 'package:flutter_ecommerce/common/constants/colors.dart';
import 'package:flutter_ecommerce/common/constants/images.dart';
import 'package:flutter_ecommerce/presentation/home/product_model.dart';
import 'package:flutter_ecommerce/presentation/home/widget/category_button.dart';
import 'package:flutter_ecommerce/presentation/home/widget/image_slider.dart';
import 'package:flutter_ecommerce/presentation/home/widget/product_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final searchController = TextEditingController();
  final List<String> images = [
    Images.recomendedProductBanner,
    Images.recomendedProductBanner,
    Images.recomendedProductBanner,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SpaceHeight(20.h),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Alamat pengiriman',
                    style: TextStyle(
                      fontSize: 12,
                      color: ColorName.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      const Text(
                        'Bandung, Jawa Barat',
                        style: TextStyle(
                          fontSize: 12,
                          color: ColorName.primary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SpaceWidth(5.w),
                      const Icon(
                        Icons.expand_more,
                        size: 18,
                        color: ColorName.primary,
                      )
                    ],
                  )
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      Images.iconBuy,
                      height: 24,
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        Images.iconNotificationHome,
                        height: 24,
                      ))
                ],
              )
            ],
          ),
          SpaceHeight(16.h),
          SearchInput(
            controller: searchController,
            onChanged: (value) {},
          ),
          SpaceHeight(16.h),
          ImageSlider(items: images),
          SpaceHeight(12.h),
          Text(
            'Kategori',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              color: ColorName.primary,
            ),
          ),
          SpaceHeight(10.h),
          Row(
            children: [
              Flexible(
                child: CategoryButton(
                  imagePath: Images.fashion1,
                  label: 'Pakaian',
                  onPressed: () {},
                ),
              ),
              Flexible(
                child: CategoryButton(
                  imagePath: Images.fashion2,
                  label: 'Pakaian',
                  onPressed: () {},
                ),
              ),
              Flexible(
                child: CategoryButton(
                  imagePath: Images.more,
                  label: 'Pakaian',
                  onPressed: () {},
                ),
              ),
              Flexible(
                child: CategoryButton(
                  imagePath: Images.fashion1,
                  label: 'Pakaian',
                  onPressed: () {},
                ),
              ),
            ],
          ),
          SpaceHeight(16.h),
          Text(
            'Produk',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              color: ColorName.primary,
            ),
          ),
          GridView.builder(
            /* 
              tambahkan shrinkWrap dan physics
              untuk running listview builder di dalam listview 
             */
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 2/3,
            ),
            itemCount: productdata.length,
            itemBuilder: (context, index) {
              return ProductCard(
                data: productdata[index],
              );
            },
          )
        ],
      ),
    );
  }
}

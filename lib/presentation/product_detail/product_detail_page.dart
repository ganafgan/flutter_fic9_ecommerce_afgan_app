import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/components/button.dart';
import 'package:flutter_ecommerce/common/components/space_height.dart';
import 'package:flutter_ecommerce/common/constants/colors.dart';
import 'package:flutter_ecommerce/common/constants/images.dart';
import 'package:flutter_ecommerce/presentation/home/product_model.dart';
import 'package:flutter_ecommerce/presentation/home/widget/image_slider.dart';
import 'package:flutter_ecommerce/presentation/product_detail/widget/product_description_widget.dart';
import 'package:flutter_ecommerce/presentation/product_detail/widget/product_info_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  final List<String> images = [
    Images.recomendedProductBanner,
    Images.recomendedProductBanner,
    Images.recomendedProductBanner,
  ];
  EdgeInsets padding = EdgeInsets.symmetric(horizontal: 16.w);

  /* 
    bisa dibuat dengan 2 cara
    bisa menggunakan stack
    bisa menggunakan BottomNavigatonBar
   */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                SpaceHeight(10.h),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios,
                      ),
                    ),
                    const Text(
                      'Detail Produk',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                ImageSlider(
                  items: images,
                ),
                SpaceHeight(16.h),
                ProductInfoWidget(
                  padding: padding,
                  product: ProductModel(
                    images: images,
                    name: 'Nike Air Jordan',
                    price: 2350000,
                  ),
                  onWishListTap: (isWishList) {},
                ),
                SpaceHeight(10.h),
                ProductDescriptionWidget(
                  padding: padding,
                  description:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet arcu id tincidunt tellus arcu rhoncus, turpis nisl sed. Neque viverra ipsum orci, morbi semper. Nulla bibendum purus tempor semper purus. Ut curabitur platea sed blandit. Amet non at proin justo nulla et. A, blandit morbi suspendisse vel malesuada purus massa mi. Faucibus neque a mi hendrerit.',
                ),
                SpaceHeight(10.h),
              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                padding: EdgeInsets.all(16.w),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border(
                    top: BorderSide(
                      color: Colors.grey.withOpacity(0.2),
                      width: 0.5,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: Button.filled(
                        onPressed: () {},
                        label: 'Add to Cart',
                      ),
                    ),
                    SpaceWidth(15.w),
                    Flexible(
                      child: Button.outlined(
                        onPressed: () {},
                        label: 'Buy Now',
                        color: ColorName.light,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      /* membuat container selalu dibawah */
      
      // bottomNavigationBar: Container(
      //   padding: EdgeInsets.all(16.w),
      //   decoration: BoxDecoration(
      //     border: Border(
      //       top: BorderSide(
      //         color: Colors.grey.withOpacity(0.2),
      //         width: 0.5,
      //       ),
      //     ),
      //   ),
      //   child: Row(
      //     mainAxisSize: MainAxisSize.min,
      //     children: [
      //       Flexible(
      //         child: Button.filled(
      //           onPressed: () {},
      //           label: 'Add to Cart',
      //         ),
      //       ),
      //       SpaceWidth(15.w),
      //       Flexible(
      //         child: Button.outlined(
      //           onPressed: () {},
      //           label: 'Buy Now',
      //           color: ColorName.light,
      //         ),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}

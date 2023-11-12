// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce/common/components/button.dart';
import 'package:flutter_ecommerce/common/components/header_title.dart';
import 'package:flutter_ecommerce/common/components/space_height.dart';
import 'package:flutter_ecommerce/common/constants/colors.dart';
import 'package:flutter_ecommerce/common/constants/images.dart' as localImages;
import 'package:flutter_ecommerce/common/constants/variables.dart';
import 'package:flutter_ecommerce/data/model/responses/products_response_model.dart';
import 'package:flutter_ecommerce/presentation/cart/bloc/cart/cart_bloc.dart';
import 'package:flutter_ecommerce/presentation/cart/cart_page.dart';
import 'package:flutter_ecommerce/presentation/cart/widget/cart_model.dart';
import 'package:flutter_ecommerce/presentation/home/widget/image_slider.dart';
import 'package:flutter_ecommerce/presentation/product_detail/widget/product_description_widget.dart';
import 'package:flutter_ecommerce/presentation/product_detail/widget/product_info_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  final List<String> images = [
    localImages.Images.recomendedProductBanner,
    localImages.Images.recomendedProductBanner,
    localImages.Images.recomendedProductBanner,
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
                HeaderBack(
                  title: 'Produk Detail',
                  onBack: () {},
                ),
                SpaceHeight(5.h),
                ImageSlider(
                  items: [
                    '${Variables.baseUrl}${widget.product.attributes.images.data[0].attributes.url}',
                  ],
                ),
                SpaceHeight(16.h),
                ProductInfoWidget(
                  padding: padding,
                  product: widget.product,
                  onWishListTap: (isWishList) {},
                ),
                SpaceHeight(10.h),
                ProductDescriptionWidget(
                  padding: padding,
                  description: widget.product.attributes.description,
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
                        onPressed: () {
                          context.read<CartBloc>().add(
                                CartEvent.add(
                                  CartModel(
                                      product: widget.product, quantity: 1)
                                ),
                              );
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const CartPage();
                              },
                            ),
                          );
                        },
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

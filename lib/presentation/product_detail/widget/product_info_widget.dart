// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/components/space_height.dart';
import 'package:flutter_ecommerce/common/constants/colors.dart';

import 'package:flutter_ecommerce/presentation/home/product_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductInfoWidget extends StatefulWidget {
  const ProductInfoWidget({
    Key? key,
    required this.padding,
    required this.product,
    required this.onWishListTap,
  }) : super(key: key);
  final EdgeInsetsGeometry padding;
  final ProductModel product;
  final void Function(bool isWishList) onWishListTap;

  @override
  State<ProductInfoWidget> createState() => _ProductInfoWidgetState();
}

class _ProductInfoWidgetState extends State<ProductInfoWidget> {
  bool isWishlist = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: widget.padding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.product.name,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              StatefulBuilder(
                builder: (context, setState) {
                  return IconButton(
                    onPressed: () {
                      setState(() {
                        isWishlist = !isWishlist;
                      });
                      widget.onWishListTap(isWishlist);
                    },
                    icon: isWishlist
                        ? const Icon(
                            Icons.favorite,
                            color: ColorName.red,
                          )
                        : const Icon(Icons.favorite_border),
                    iconSize: 24,
                  );
                },
              ),
            ],
          ),
        ),
        SpaceHeight(10.h),
        Padding(
          padding: widget.padding,
          child: Text(
            widget.product.priceFormat,
            style: TextStyle(
              fontSize: 20.sp,
              color: ColorName.primary,
            ),
          ),
        ),
      ],
    );
  }
}

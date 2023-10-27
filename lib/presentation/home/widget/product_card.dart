// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/components/space_height.dart';
import 'package:flutter_ecommerce/common/constants/colors.dart';

import 'package:flutter_ecommerce/presentation/home/product_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.data,
  }) : super(key: key);

  final ProductModel data;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Product is ${data.name}'),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.w),
        ),
        child: Container(
          padding: EdgeInsets.all(
            10.w,
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: ColorName.black.withOpacity(0.05),
                blurRadius: 7.0,
                spreadRadius: 2,
                offset: const Offset(0, 4),
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.w),
                child: Image.asset(
                  data.images.first,
                  height: 110.h,
                  fit: BoxFit.cover,
                ),
              ),
              SpaceHeight(14.h),
              Flexible(
                child: Text(
                  data.name,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SpaceHeight(15.h),
              Text(
                data.priceFormat,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

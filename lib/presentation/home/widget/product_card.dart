import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/components/space_height.dart';
import 'package:flutter_ecommerce/common/constants/colors.dart';
import 'package:flutter_ecommerce/common/constants/variables.dart';
import 'package:flutter_ecommerce/common/extensions/int_ext.dart';
import 'package:flutter_ecommerce/data/model/responses/products_response_model.dart';

import 'package:flutter_ecommerce/presentation/home/product_model.dart';
import 'package:flutter_ecommerce/presentation/product_detail/product_detail_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Product data;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // ScaffoldMessenger.of(context).showSnackBar(
        //   SnackBar(
        //     content: Text('Product is ${data.name}'),
        //   ),
        // );
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const ProductDetailPage();
            },
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
                child: Image.network(
                  '${Variables.baseUrl}${data.attributes.images.data[0].attributes.url}',
                  height: 110.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SpaceHeight(14.h),
              Flexible(
                child: Text(
                  data.attributes.name,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SpaceHeight(15.h),
              Text(
                int.parse(data.attributes.price).currencyFormatRp,
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

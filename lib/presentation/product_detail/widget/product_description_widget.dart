// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/components/space_height.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDescriptionWidget extends StatefulWidget {
  const ProductDescriptionWidget({
    Key? key,
    required this.padding,
    required this.description,
  }) : super(key: key);
  final EdgeInsets padding;
  final String description;

  @override
  State<ProductDescriptionWidget> createState() =>
      _ProductDescriptionWidgetState();
}

class _ProductDescriptionWidgetState extends State<ProductDescriptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: widget.padding,
          child: Text(
            'Deskripsi Produk',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SpaceHeight(10.h),
        Padding(
          padding: widget.padding,
          child: Text(
            widget.description,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}

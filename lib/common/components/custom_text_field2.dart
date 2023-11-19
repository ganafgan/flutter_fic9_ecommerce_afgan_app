// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/components/space_height.dart';
import 'package:flutter_ecommerce/common/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField2 extends StatelessWidget {
  const CustomTextField2({
    Key? key,
    required this.controller,
    required this.label,
    this.onChanged,
    this.obsecureText = false,
    this.keyboardType,
    this.maxLines = 1,
  }) : super(key: key);
  final TextEditingController controller;
  final String label;
  final Function(String value)? onChanged;
  final bool obsecureText;
  final TextInputType? keyboardType;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        SpaceHeight(5.h),
        TextFormField(
          controller: controller,
          onChanged: onChanged,
          keyboardType: keyboardType,
          obscureText: obsecureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 10.h,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.w),
              borderSide: const BorderSide(
                color: ColorName.grey,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.w),
              borderSide: const BorderSide(
                color: ColorName.grey,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.w),
              borderSide: const BorderSide(color: ColorName.primary),
            ),
          ),
          maxLines: maxLines,
        ),
      ],
    );
  }
}

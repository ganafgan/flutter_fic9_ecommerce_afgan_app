// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/components/space_height.dart';
import 'package:flutter_ecommerce/common/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropdown extends StatelessWidget {
  const CustomDropdown({
    Key? key,
    this.value,
    required this.items,
    required this.label,
    this.onChanged,
  }) : super(key: key);
  final String? value;
  final List<String> items;
  final String label;
  final Function(String?)? onChanged;

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
        SpaceHeight(12.h),
        DropdownButtonFormField<String>(
          borderRadius: BorderRadius.circular(6.w),
          value: value,
          onChanged: onChanged,
          items: items.map((e) {
            return DropdownMenuItem<String>(
              value: e,
              child: Text(e),
            );
          }).toList(),
          decoration: InputDecoration(
            // border: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(6.w),
            //   borderSide: const BorderSide(color: Colors.redAccent),
            // ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.w),
              borderSide: const BorderSide(color: ColorName.border),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.w),
              borderSide: const BorderSide(color: ColorName.primary),
            ),
          ),
        ),
      ],
    );
  }
}

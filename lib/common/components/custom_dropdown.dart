import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/components/space_height.dart';
import 'package:flutter_ecommerce/common/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropdown<T> extends StatelessWidget {
  const CustomDropdown({
    Key? key,
    required this.value,
    required this.items,
    required this.label,
    this.onChanged,
  }) : super(key: key);
  final T value;
  final List<T> items;
  final String label;
  final Function(T?)? onChanged;

  @override
  Widget build(BuildContext context) {
    debugPrint(value.toString());
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
        DropdownButtonFormField<T>(
          value: value,
          onChanged: onChanged,
          items: items.map((T item) {
            return DropdownMenuItem<T>(
              value: item,
              child: Text(item.toString()),
            );
          }).toList(),
          borderRadius: BorderRadius.circular(6.w),
          decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.w),
              borderSide: const BorderSide(color: ColorName.grey),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.w),
              borderSide: const BorderSide(color: ColorName.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.w),
              borderSide: const BorderSide(color: ColorName.primary),
            ),
          ),
          elevation: 2,
        ),
      ],
    );
  }
}

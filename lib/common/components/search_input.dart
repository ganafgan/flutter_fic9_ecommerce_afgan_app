// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    Key? key,
    required this.controller,
    required this.onChanged,
  }) : super(key: key);
  final TextEditingController controller;
  final Function(String value) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorName.white, borderRadius: BorderRadius.circular(8)),
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: 'Cari disini',
          prefixIcon: const Icon(
            Icons.search,
            color: ColorName.primary,
          ),
          contentPadding: EdgeInsets.all(16.w),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.w),
            borderSide: const BorderSide(color: ColorName.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.w),
            borderSide: const BorderSide(color: ColorName.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.w),
            borderSide: const BorderSide(color: ColorName.primary),
          ),
        ),
      ),
    );
  }
}

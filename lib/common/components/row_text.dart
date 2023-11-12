// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowText extends StatelessWidget {
  const RowText({
    Key? key,
    required this.label,
    required this.value,
    this.valueColor = ColorName.black,
    this.fontWeight = FontWeight.w400,
  }) : super(key: key);
  final String label;
  final String value;
  final Color valueColor;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    // return Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   children: [
    //     Text(
    //       label,
    //       style: TextStyle(
    //         fontSize: 12.sp,
    //         fontWeight: fontWeight,
    //       ),
    //     ),
    //     Flexible(
    //       child: Text(
    //         value,
    //         style: TextStyle(
    //           fontSize: 12.sp,
    //           fontWeight: fontWeight,
    //           color: valueColor,
    //         ),
    //       ),
    //     ),
    //   ],
    // );
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: fontWeight,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(
            value,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: fontWeight,
              color: valueColor,
            ),
            textAlign: TextAlign.end,
          ),
        ),
      ],
    );
  }
}

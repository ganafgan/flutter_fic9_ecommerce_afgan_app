import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/components/space_height.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_ecommerce/common/components/button.dart';
import 'package:flutter_ecommerce/common/constants/colors.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    Key? key,
    required this.onOK,
    required this.onCancel,
  }) : super(key: key);
  final Function() onOK;
  final Function() onCancel;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 16.w),
      backgroundColor: Colors.transparent,
      elevation: 5.0,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 16.h,
        ),
        decoration: BoxDecoration(
          color: ColorName.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'LOGOUT',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Are you sure to logout?',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Button.filled(
                    onPressed: onOK,
                    label: "Yes",
                    // width: 125.w,
                  ),
                ),
                SpaceWidth(20.w),
                Flexible(
                  child: Button.outlined(
                    onPressed: onCancel,
                    label: "No",
                    // width: 125.w,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

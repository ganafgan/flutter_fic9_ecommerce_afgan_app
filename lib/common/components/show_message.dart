import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/components/space_height.dart';
import 'package:flutter_ecommerce/common/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowMessage {
  static void success({
    required BuildContext ctx,
    required String message,
  }) {
    ScaffoldMessenger.of(ctx).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: ColorName.green,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  static void error({
    required BuildContext ctx,
    required String message,
  }) {
    ScaffoldMessenger.of(ctx).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: ColorName.red,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  static void loading({required BuildContext ctx}) {
    showDialog(
      context: ctx,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          elevation: 0,
          content: Container(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            decoration: BoxDecoration(
              color: ColorName.white,
              borderRadius: BorderRadius.circular(10.w),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircularProgressIndicator(
                  color: ColorName.primary,
                ),
                SpaceHeight(16.h),
                Text(
                  'Loading...',
                  style: TextStyle(
                    fontSize: 12.sp,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

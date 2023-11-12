import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/constants/colors.dart';

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
}

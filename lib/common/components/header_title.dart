// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class HeaderBack extends StatelessWidget {
  const HeaderBack({
    Key? key,
    required this.title,
    required this.onBack,
    this.isBack = true,
  }) : super(key: key);
  final String title;
  final void Function() onBack;
  final bool isBack;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            isBack ? IconButton(
              onPressed: onBack,
              icon: const Icon(
                Icons.arrow_back_ios,
              ),
            ) : const SizedBox(),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ],
    );
  }
}

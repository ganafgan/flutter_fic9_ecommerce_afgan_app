import 'package:flutter/material.dart';

class HeaderBack extends StatelessWidget {
  const HeaderBack({
    Key? key,
    required this.title,
    required this.onBack,
    this.isBack = true,
    this.isAction = false,
    this.icon,
    this.onPressed,
  }) : super(key: key);
  final String title;
  final void Function() onBack;
  final bool isBack;
  final bool isAction;
  final Widget? icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (isBack)
          IconButton(
            onPressed: onBack,
            icon: const Icon(
              Icons.arrow_back_ios,
            ),
          ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        if (isAction) const Spacer(),
        if (isAction)
          IconButton(
            icon: icon ?? const SizedBox.shrink(),
            iconSize: 24,
            onPressed: onPressed,
          ),
      ],
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SpaceHeight extends StatelessWidget {
  const SpaceHeight(this.height, {super.key});
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}

class SpaceWidth extends StatelessWidget {
  const SpaceWidth(this.width, {super.key});
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width);
  }
}

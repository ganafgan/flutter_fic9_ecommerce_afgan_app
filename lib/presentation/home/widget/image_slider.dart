// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_ecommerce/common/components/space_height.dart';
import 'package:flutter_ecommerce/common/constants/colors.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({
    Key? key,
    required this.items,
    this.isRounded = false,
    this.isAsset = false,
  }) : super(key: key);
  final List<String> items;
  final bool isRounded;
  final bool isAsset;

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int currentIndex = 0;
  final CarouselController controller = CarouselController();

  /* untuk manual bisa menggunakan page view builder */
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: widget.items.map((e) {
            return ClipRRect(
              borderRadius: widget.isRounded
                  ? BorderRadius.circular(8.w)
                  : BorderRadius.zero,
              child: !widget.isAsset
                  ? Image.network(
                      e,
                      height: 206,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    )
                  : Image.asset(
                      e,
                      height: 206,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
            );
          }).toList(),
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 343 / 206,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
        SpaceHeight(10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.items.asMap().entries.map((e) {
            return GestureDetector(
              onTap: () {
                () => controller.animateToPage(e.key);
              },
              child: Container(
                width: 15.w,
                height: 3.h,
                margin: EdgeInsets.symmetric(horizontal: 4.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.w),
                  color: ColorName.primary.withOpacity(
                    currentIndex == e.key ? 0.9 : 0.4,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

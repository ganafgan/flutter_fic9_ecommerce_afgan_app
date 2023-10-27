import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_ecommerce/common/components/space_height.dart';
import 'package:flutter_ecommerce/common/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({
    super.key,
    required this.items,
  });
  final List<String> items;

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int currentIndex = 0;
  final CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: widget.items.map((e) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(8.w),
              child: Image.asset(
                e,
                height: 206,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.contain,
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
                  color: ColorName.primary
                      .withOpacity(currentIndex == e.key ? 0.9 : 0.4),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

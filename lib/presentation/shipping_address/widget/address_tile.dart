// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/components/button.dart';
import 'package:flutter_ecommerce/common/components/space_height.dart';
import 'package:flutter_ecommerce/common/constants/images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_ecommerce/common/constants/colors.dart';
import 'package:flutter_ecommerce/presentation/shipping_address/model/address_model.dart';

class AddressTile extends StatelessWidget {
  const AddressTile({
    Key? key,
    this.isSelected = false,
    required this.data,
    required this.onTap,
    required this.onEditTap,
    required this.onDeleteTap,
  }) : super(key: key);

  /* 
    VoidCallback => memberikan fungsi void saja
    void Function => memberikan fungsi void, bisa dengan parameter
   */

  final bool isSelected;
  final AddressModel data;
  final void Function() onTap;
  final void Function() onEditTap;
  final void Function() onDeleteTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.w),
            border: Border.all(
                color: isSelected ? ColorName.primary : ColorName.border)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data.name,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            SpaceHeight(10.h),
            Text(
              data.address,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: ColorName.grey,
              ),
            ),
            SpaceHeight(10.h),
            Text(
              data.phoneNumber,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: ColorName.grey,
              ),
            ),
            SpaceHeight(10.h),
            Row(
              children: [
                Flexible(
                  child: Button.filled(
                    width: 80.w,
                    height: 30.h,
                    onPressed: onEditTap,
                    label: 'Edit',
                    fontSize: 12.sp,
                  ),
                ),
                SpaceWidth(10.w),
                Flexible (
                  child: IconButton(
                    onPressed: onDeleteTap,
                    icon: const ImageIcon(
                      AssetImage(Images.iconTrash),
                      color: ColorName.red,
                    ),
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

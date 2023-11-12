import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce/common/components/space_height.dart';
import 'package:flutter_ecommerce/common/constants/colors.dart';
import 'package:flutter_ecommerce/common/constants/images.dart';
import 'package:flutter_ecommerce/presentation/cart/bloc/cart/cart_bloc.dart';
import 'package:flutter_ecommerce/presentation/cart/cart_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:badges/badges.dart' as badges;

class HeaderHome extends StatefulWidget {
  const HeaderHome({super.key});

  @override
  State<HeaderHome> createState() => _HeaderHomeState();
}

class _HeaderHomeState extends State<HeaderHome> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Alamat pengiriman',
              style: TextStyle(
                fontSize: 12,
                color: ColorName.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              children: [
                const Text(
                  'Bandung, Jawa Barat',
                  style: TextStyle(
                    fontSize: 12,
                    color: ColorName.primary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SpaceWidth(5.w),
                const Icon(
                  Icons.expand_more,
                  size: 18,
                  color: ColorName.primary,
                )
              ],
            )
          ],
        ),
        const Spacer(),
        Row(
          children: [
            BlocBuilder<CartBloc, CartState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return const SizedBox();
                  },
                  success: (carts) {
                    int total = 0;
                    for (var cart in carts) {
                      total += cart.quantity;
                    }
                    if (total != 0) {
                      return badges.Badge(
                        position: badges.BadgePosition.topEnd(end: 0, top: -5),
                        badgeContent: Text(
                          total.toString(),
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: ColorName.white,
                          ),
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const CartPage();
                                },
                              ),
                            );
                          },
                          icon: Image.asset(
                            Images.iconBuy,
                            height: 24,
                          ),
                        ),
                      );
                    } else {
                      return IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const CartPage();
                              },
                            ),
                          );
                        },
                        icon: Image.asset(
                          Images.iconBuy,
                          height: 24,
                        ),
                      );
                    }
                  },
                );
              },
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                Images.iconNotificationHome,
                height: 24,
              ),
            )
          ],
        )
      ],
    );
  }
}

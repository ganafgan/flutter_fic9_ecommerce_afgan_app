import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce/common/components/button.dart';
import 'package:flutter_ecommerce/common/components/space_height.dart';
import 'package:flutter_ecommerce/common/constants/colors.dart';
import 'package:flutter_ecommerce/common/constants/variables.dart';
import 'package:flutter_ecommerce/common/extensions/int_ext.dart';
import 'package:flutter_ecommerce/data/model/responses/products_response_model.dart';
import 'package:flutter_ecommerce/presentation/cart/bloc/cart/cart_bloc.dart';
import 'package:flutter_ecommerce/presentation/cart/widget/cart_model.dart';
import 'package:flutter_ecommerce/presentation/product_detail/product_detail_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ProductDetailPage(
                product: product,
              );
            },
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.w),
        ),
        child: Container(
          padding: EdgeInsets.all(
            10.w,
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: ColorName.black.withOpacity(0.05),
                blurRadius: 7.0,
                spreadRadius: 2,
                offset: const Offset(0, 4),
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.w),
                child: CachedNetworkImage(
                  imageUrl:
                      '${Variables.baseUrl}${product.attributes.images.data[0].attributes.url}',
                  placeholder: (context, url) {
                    return SizedBox(
                      height: 50.h,
                      width: 50.w,
                      child: const CircularProgressIndicator(
                        strokeWidth: 2,
                      ),
                    );
                  },
                  errorWidget: (context, url, error) {
                    return const Icon(Icons.error);
                  },
                  height: 110.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SpaceHeight(14.h),
              Text(
                product.attributes.name,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                int.parse(product.attributes.price).currencyFormatRp,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SpaceHeight(10.h),
              Flexible(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Button.filled(
                    width: 50,
                    label: '+',
                    onPressed: () {
                      context.read<CartBloc>().add(
                            CartEvent.add(
                              CartModel(
                                product: product,
                                quantity: 1,
                              ),
                            ),
                          );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

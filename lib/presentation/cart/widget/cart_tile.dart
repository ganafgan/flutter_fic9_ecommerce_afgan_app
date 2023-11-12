// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce/common/components/show_message.dart';
import 'package:flutter_ecommerce/common/components/space_height.dart';
import 'package:flutter_ecommerce/common/constants/colors.dart';
import 'package:flutter_ecommerce/common/constants/images.dart' as local_images;
import 'package:flutter_ecommerce/common/constants/variables.dart';
import 'package:flutter_ecommerce/common/extensions/int_ext.dart';
import 'package:flutter_ecommerce/presentation/cart/bloc/cart/cart_bloc.dart';
import 'package:flutter_ecommerce/presentation/cart/widget/cart_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartItemWidget extends StatefulWidget {
  const CartItemWidget({
    Key? key,
    required this.data,
  }) : super(key: key);
  final CartModel data;

  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.w),
        border: Border.all(color: ColorName.border),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5.w),
            child: Image.network(
              '${Variables.baseUrl}${widget.data.product.attributes.images.data.first.attributes.url}',
              width: 70.w,
              height: 70.h,
              fit: BoxFit.cover,
            ),
          ),
          SpaceWidth(15.w),
          /* 
            Harus di definisikan panjang dan lebar nya
            Jika tidak, gunakan expanded dan flexible
          */
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.data.product.attributes.name,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        context
                            .read<CartBloc>()
                            .add(CartEvent.delete(widget.data));
                        ShowMessage.error(
                          ctx: context,
                          message: 'Produk di hapus',
                        );
                      },
                      child: ImageIcon(
                        const AssetImage(local_images.Images.iconTrash),
                        size: 20.w,
                      ),
                    ),
                  ],
                ),
                SpaceHeight(20.h),
                Row(
                  children: [
                    Text(
                      int.parse(widget.data.product.attributes.price)
                          .currencyFormatRp,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: ColorName.primary,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        color: ColorName.border,
                        borderRadius: BorderRadius.circular(5.w),
                      ),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (widget.data.quantity > 0) {
                                  context
                                      .read<CartBloc>()
                                      .add(CartEvent.remove(widget.data));
                                }
                              });
                            },
                            child: Container(
                              color: ColorName.white,
                              child: const Icon(Icons.remove),
                            ),
                          ),
                          SizedBox(
                            width: 40.w,
                            child: Center(
                              child: Text(widget.data.quantity.toString()),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              context
                                  .read<CartBloc>()
                                  .add(CartEvent.add(widget.data));
                            },
                            child: Container(
                              color: ColorName.white,
                              child: const Icon(Icons.add),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

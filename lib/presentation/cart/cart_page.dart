// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce/common/components/button.dart';
import 'package:flutter_ecommerce/common/components/custom_dropdown.dart';
import 'package:flutter_ecommerce/common/components/header_title.dart';
import 'package:flutter_ecommerce/common/components/row_text.dart';
import 'package:flutter_ecommerce/common/components/show_message.dart';
import 'package:flutter_ecommerce/common/components/space_height.dart';
import 'package:flutter_ecommerce/common/constants/colors.dart';
import 'package:flutter_ecommerce/common/extensions/int_ext.dart';
import 'package:flutter_ecommerce/data/model/requests/order_request_model.dart';
import 'package:flutter_ecommerce/presentation/cart/bloc/cart/cart_bloc.dart';
import 'package:flutter_ecommerce/presentation/cart/bloc/order/order_bloc.dart';
import 'package:flutter_ecommerce/presentation/cart/widget/cart_tile.dart';
import 'package:flutter_ecommerce/presentation/home/dashboard_page.dart';
import 'package:flutter_ecommerce/presentation/payment/payment_page.dart';
import 'package:flutter_ecommerce/presentation/shipping_address/shipping_address_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartPage extends StatefulWidget {
  const CartPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int courierPrice = 25000;
  // List<Map> myLists =
  //     List.generate(100, (index) => {'index': index, 'name': 'name is $index'});

  // List<CartModel> carts = [
  //   CartModel(
  //     id: 1,
  //     imagePath: Images.product1,
  //     name: 'Tas Kekinian',
  //     price: 200000,
  //   ),
  //   CartModel(
  //     id: 2,
  //     imagePath: Images.product2,
  //     name: 'Earphone',
  //     price: 199999,
  //   ),
  // ];

  // void setCarts() {
  //   setState(() {
  //     if (carts.isEmpty) {
  //       carts.addAll([...carts2]);
  //     } else {
  //       carts.clear();
  //     }
  //   });

  //   debugPrint(carts.toString());
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   context
  //       .read<CartBloc>()
  //       .add(CartEvent.add(CartModel(product: widget.product, quantity: 1)));
  // }

  List<Item> items = [];
  int localTotalPrice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16.w),
          children: [
            HeaderBack(
              title: 'Carts',
              onBack: () {},
              isBack: false,
            ),
            SpaceHeight(16.h),

            BlocBuilder<CartBloc, CartState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  success: (carts) {
                    if (carts.isEmpty) {
                      return Center(
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.3,
                          ),
                          child: Column(
                            children: [
                              const Icon(
                                Icons.add_shopping_cart,
                                size: 100,
                                color: ColorName.primary,
                              ),
                              SpaceHeight(10.h),
                              Text(
                                'Oooooppps \nKeranjang anda kosong',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SpaceHeight(20.h),
                              Button.filled(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const DashboardPage();
                                      },
                                    ),
                                  );
                                },
                                label: 'Cari barang',
                                width: 200.w,
                              )
                            ],
                          ),
                        ),
                      );
                    } else {
                      return ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        separatorBuilder: (context, index) {
                          return SpaceHeight(10.h);
                        },
                        itemCount: carts.length,
                        itemBuilder: (context, index) {
                          return CartItemWidget(
                            data: carts[index],
                          );
                        },
                      );
                    }
                  },
                );
              },
            ),
            SpaceHeight(16.h),
            /* button for choosing shipping address */

            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.w),
              child: Button.filled(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ShippingAddressPage();
                      },
                    ),
                  );
                },
                label: 'Pilih Alamat Pengiriman',
              ),
            ),
            SpaceHeight(16.h),
            // if (carts.isNotEmpty)
            Container(
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.w),
                border: Border.all(color: ColorName.border),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Alamat pengiriman',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SpaceHeight(16.h),
                  Text(
                    'Nama Lengkap',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: ColorName.grey,
                    ),
                  ),
                  SpaceHeight(8.h),
                  Text(
                    'Alamat Lengkap',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: ColorName.grey,
                    ),
                  ),
                  SpaceHeight(8.h),
                  Text(
                    'Kota, Provinsi, Kode Pos',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: ColorName.grey,
                    ),
                  ),
                  SpaceHeight(8.h),
                  Text(
                    'No Handphone',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: ColorName.grey,
                    ),
                  ),
                ],
              ),
            ),
            SpaceHeight(16.h),
            /* container for dropdown courier */
            // if (carts.isNotEmpty)
            Container(
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.w),
                border: Border.all(color: ColorName.border),
              ),
              child: CustomDropdown(
                items: const ['JNE', 'TIKI', 'Shopee Xpress', 'J&T'],
                label: 'Kurir',
                value: 'JNE',
                onChanged: (value) {
                  debugPrint(value);
                },
              ),
            ),
            SpaceHeight(16.h),
            // if (carts.isNotEmpty)
            Container(
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.w),
                border: Border.all(color: ColorName.border),
              ),
              child: Column(
                children: [
                  BlocBuilder<CartBloc, CartState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () {
                          return RowText(
                            label: 'Total Harga',
                            value: 0.currencyFormatRp,
                          );
                        },
                        success: (carts) {
                          int totalPrice = 0;
                          /* cara 1 */
                          // for (var cart in carts) {
                          //   totalPrice += (cart.quantity * int.parse(cart.product.attributes.price));
                          // }

                          /* cara 2 */
                          carts.forEach(
                            (element) {
                              totalPrice += (element.quantity *
                                  int.parse(element.product.attributes.price));
                            },
                          );

                          /* 
                            tidak perlu menambahkan setState 
                            karena blocBuilder otomatis akan
                            membangun ulang widget
                          */
                          localTotalPrice = totalPrice;

                          items = carts.map((e) {
                            return Item(
                              id: e.product.id,
                              productName: e.product.attributes.name,
                              price: int.parse(e.product.attributes.price),
                              qty: e.quantity,
                            );
                          }).toList();

                          return RowText(
                            label: 'Total Harga',
                            value: totalPrice.currencyFormatRp,
                          );
                        },
                      );
                    },
                  ),
                  SpaceHeight(12.h),
                  RowText(
                    label: 'Biaya Pengiriman',
                    value: courierPrice.currencyFormatRp,
                  ),
                  SpaceHeight(40.h),
                  const Divider(color: ColorName.border),
                  SpaceHeight(12.h),
                  BlocBuilder<CartBloc, CartState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () {
                          return RowText(
                            label: 'Total Harga',
                            value: 0.currencyFormatRp,
                          );
                        },
                        success: (carts) {
                          int total = 0;
                          for (var cart in carts) {
                            total += (cart.quantity *
                                int.parse(cart.product.attributes.price));
                          }
                          int totals = total + courierPrice;
                          return RowText(
                            label: 'Total Harga',
                            value: totals.currencyFormatRp,
                            valueColor: ColorName.primary,
                            fontWeight: FontWeight.w600,
                          );
                        },
                      );
                    },
                  ),
                  SpaceHeight(20.h),
                  BlocConsumer<OrderBloc, OrderState>(
                    listener: (context, state) {
                      state.maybeWhen(
                        orElse: () {},
                        success: (response) {
                          context.read<CartBloc>().add(const CartEvent.clear());
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return PaymentPage(
                                  invoiceUrl: response.invoiceUrl,
                                  orderId: response.externalId,
                                );
                              },
                            ),
                          );
                        },
                        error: (error) {
                          ShowMessage.error(
                            ctx: context,
                            message: error,
                          );
                        },
                      );
                    },
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () {
                          return Button.filled(
                            onPressed: () {
                              context.read<OrderBloc>().add(
                                    OrderEvent.Order(
                                      OrderRequestModel(
                                        data: Data(
                                          items: items,
                                          totalPrice: localTotalPrice,
                                          deliveryAddress:
                                              'Bandung, Jawa Barat',
                                          courierName: 'JNE',
                                          courierPrice: 15000,
                                          status: 'waiting-payment',
                                        ),
                                      ),
                                    ),
                                  );
                            },
                            label: 'Bayar Sekarang',
                          );
                        },
                        loading: () {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        },
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

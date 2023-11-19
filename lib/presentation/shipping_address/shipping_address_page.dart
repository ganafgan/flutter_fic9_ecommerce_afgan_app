import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/components/button.dart';
import 'package:flutter_ecommerce/common/components/header_title.dart';
import 'package:flutter_ecommerce/common/components/show_message.dart';
import 'package:flutter_ecommerce/common/components/space_height.dart';
import 'package:flutter_ecommerce/common/constants/colors.dart';
import 'package:flutter_ecommerce/presentation/shipping_address/add_address_page.dart';
import 'package:flutter_ecommerce/presentation/shipping_address/edit_address_page.dart';
import 'package:flutter_ecommerce/presentation/shipping_address/model/address_model.dart';
import 'package:flutter_ecommerce/presentation/shipping_address/widget/address_tile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShippingAddressPage extends StatefulWidget {
  const ShippingAddressPage({super.key});

  @override
  State<ShippingAddressPage> createState() => _ShippingAddressPageState();
}

class _ShippingAddressPageState extends State<ShippingAddressPage> {
  final ValueNotifier<int> selectedIndex = ValueNotifier(1);
  ValueNotifier<int> count = ValueNotifier(1);
  final List<AddressModel> addresses = [
    AddressModel(
      name: 'Afgan',
      address: 'Jl. Cemara no.37',
      phoneNumber: '087824140294',
    ),
    AddressModel(
      name: 'Taufiq',
      address: 'Jl. Bungur no.26',
      phoneNumber: '087824140294',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            HeaderBack(
              title: 'Pengiriman',
              onBack: () {
                Navigator.pop(context);
              },
              isAction: true,
              icon: const Icon(
                Icons.add,
                color: ColorName.black,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const AddAddressPage();
                    },
                  ),
                );
              },
            ),
            addresses.isEmpty
                ? Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 200.h),
                      child: Column(
                        children: [
                          Icon(
                            Icons.home,
                            size: 50.w,
                            color: ColorName.primary,
                          ),
                          SpaceHeight(10.h),
                          Text(
                            'Opppssss.... \nAlamat belum tersedia',
                            style: TextStyle(
                              fontSize: 16.sp,
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
                                    return const AddAddressPage();
                                  },
                                ),
                              );
                            },
                            label: 'Tambah Alamat',
                            width: 200.w,
                          )
                        ],
                      ),
                    ),
                  )
                : ValueListenableBuilder(
                    valueListenable: selectedIndex,
                    builder: (context, value, child) {
                      return ListView.separated(
                        padding: EdgeInsets.all(16.w),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        separatorBuilder: (context, index) => SpaceHeight(10.h),
                        itemCount: addresses.length,
                        itemBuilder: (context, index) {
                          return AddressTile(
                            isSelected: value == index,
                            data: addresses[index],
                            onTap: () {
                              selectedIndex.value = index;
                            },
                            onEditTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const EditAddressPage();
                                  },
                                ),
                              );
                            },
                            onDeleteTap: () {
                              ShowMessage.success(
                                ctx: context,
                                message: 'Alamat Terhapus',
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
          ],
        ),
      ),
    );
  }
}

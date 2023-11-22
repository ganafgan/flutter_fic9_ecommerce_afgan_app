import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce/common/components/button.dart';
import 'package:flutter_ecommerce/common/components/header_title.dart';
import 'package:flutter_ecommerce/common/components/show_message.dart';
import 'package:flutter_ecommerce/common/components/space_height.dart';
import 'package:flutter_ecommerce/common/constants/colors.dart';
import 'package:flutter_ecommerce/presentation/shipping_address/add_address_page.dart';
import 'package:flutter_ecommerce/presentation/shipping_address/bloc/address/address_bloc.dart';
import 'package:flutter_ecommerce/presentation/shipping_address/edit_address_page.dart';
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

  // int idAddress = 0;
  int? idAddress;

  @override
  void initState() {
    context.read<AddressBloc>().add(const AddressEvent.getAddress());
    super.initState();
  }

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
            BlocBuilder<AddressBloc, AddressState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return const Center(
                      child: Text('No Data'),
                    );
                  },
                  getSuccess: (response) {
                    return ListView.separated(
                      padding: EdgeInsets.all(16.w),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      separatorBuilder: (context, index) => SpaceHeight(10.h),
                      itemCount: response.data.length,
                      itemBuilder: (context, index) {
                        return AddressTile(
                          isSelected: idAddress == response.data[index].id,
                          data: response.data[index],
                          onTap: () {
                            setState(() {
                              idAddress = response.data[index].id;
                            });
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
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        decoration: const BoxDecoration(
          color: ColorName.white,
          border: Border(
            top: BorderSide(
              color: ColorName.border,
              width: 2.0,
            ),
          ),
        ),
        child: Button.filled(
          disabled: idAddress == null,
          onPressed: () {
            /* melempar data/parameter ke halaman lain */
            Navigator.pop(context, idAddress);
          },
          label: 'Pilih',
        ),
      ),
    );
  }
}

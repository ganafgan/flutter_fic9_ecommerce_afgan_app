import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce/common/components/button.dart';
import 'package:flutter_ecommerce/common/components/custom_dropdown.dart';
import 'package:flutter_ecommerce/common/components/custom_text_field2.dart';
import 'package:flutter_ecommerce/common/components/header_title.dart';
import 'package:flutter_ecommerce/common/components/space_height.dart';
import 'package:flutter_ecommerce/common/constants/colors.dart';
import 'package:flutter_ecommerce/data/model/responses/province_response_model.dart';
import 'package:flutter_ecommerce/presentation/shipping_address/bloc/province/province_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddAddressPage extends StatefulWidget {
  const AddAddressPage({super.key});

  @override
  State<AddAddressPage> createState() => _AddAddressPageState();
}

class _AddAddressPageState extends State<AddAddressPage> {
  TextEditingController countryController = TextEditingController();

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController provinceController = TextEditingController();
  final TextEditingController zipCodeController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();

  bool isDefault = false;

  Province selectedProvince = Province(
    provinceId: '1',
    province: 'Bali',
  );

  @override
  void dispose() {
    countryController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    addressController.dispose();
    cityController.dispose();
    provinceController.dispose();
    zipCodeController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    context.read<ProvinceBloc>().add(const ProvinceEvent.getAll());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderBack(
              title: 'Tambah Alamat',
              onBack: () {
                Navigator.pop(context);
              },
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(16.w),
                children: [
                  SpaceHeight(10.h),
                  CustomTextField2(
                    controller: firstNameController,
                    label: 'Nama Lengkap',
                    keyboardType: TextInputType.name,
                  ),
                  SpaceHeight(16.h),
                  CustomTextField2(
                    controller: addressController,
                    label: 'Alamat',
                    maxLines: 4,
                    keyboardType: TextInputType.multiline,
                  ),
                  SpaceHeight(16.h),
                  CustomTextField2(
                    controller: phoneNumberController,
                    label: 'No Handphone',
                    keyboardType: TextInputType.phone,
                  ),
                  SpaceHeight(16.h),
                  BlocBuilder<ProvinceBloc, ProvinceState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        },
                        success: (provinces) {
                          selectedProvince = provinces.first;
                          debugPrint('ini selected ${selectedProvince.toString()}');
                          return CustomDropdown<Province>(
                            value: selectedProvince,
                            items: provinces,
                            label: 'Provinsi',
                            onChanged: (value) {
                              if (value != null) {
                                setState(() {
                                  selectedProvince = value;
                                });
                              }
                            },
                          );
                        },
                      );
                    },
                  ),
                  SpaceHeight(16.h),
                  // CustomDropdown(
                  //   items: const ['Bandung', 'Cimahi'],
                  //   label: 'Kota',
                  //   value: 'Bandung/Kabupaten',
                  //   onChanged: (val) {},
                  // ),
                  SpaceHeight(16.h),
                  // CustomDropdown(
                  //   items: const ['Sukajadi', 'Pasteur'],
                  //   label: 'Kecamtan',
                  //   value: 'Sukajadi',
                  //   onChanged: (val) {},
                  // ),
                  SpaceHeight(16.h),
                  CustomTextField2(
                    controller: zipCodeController,
                    label: 'Kode Pos',
                    keyboardType: TextInputType.number,
                  ),
                  SpaceHeight(10.h),
                  CheckboxListTile.adaptive(
                    value: isDefault,
                    onChanged: (value) {
                      setState(() {
                        isDefault = value!;
                      });
                    },
                    title: Text(
                      'Simpan sebagai alamat utama',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    activeColor: ColorName.primary,
                    contentPadding: EdgeInsets.zero,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16.w),
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: ColorName.border,
              width: 2,
            ),
          ),
        ),
        child: Button.filled(
          onPressed: () {
            Navigator.pop(context);
          },
          label: 'Tambah Alamat',
        ),
      ),
    );
  }
}

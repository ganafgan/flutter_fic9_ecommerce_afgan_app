import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce/common/components/button.dart';
import 'package:flutter_ecommerce/common/components/custom_dropdown.dart';
import 'package:flutter_ecommerce/common/components/custom_text_field2.dart';
import 'package:flutter_ecommerce/common/components/header_title.dart';
import 'package:flutter_ecommerce/common/components/show_message.dart';
import 'package:flutter_ecommerce/common/components/space_height.dart';
import 'package:flutter_ecommerce/common/constants/colors.dart';
import 'package:flutter_ecommerce/data/datasource/auth_local_datasource.dart';
import 'package:flutter_ecommerce/data/model/requests/add_address_request_model.dart';
import 'package:flutter_ecommerce/data/model/responses/city_response_model.dart';
import 'package:flutter_ecommerce/data/model/responses/province_response_model.dart';
import 'package:flutter_ecommerce/data/model/responses/subdistrict_response_model.dart';
import 'package:flutter_ecommerce/presentation/shipping_address/bloc/address/address_bloc.dart';
import 'package:flutter_ecommerce/presentation/shipping_address/bloc/city/city_bloc.dart';
import 'package:flutter_ecommerce/presentation/shipping_address/bloc/province/province_bloc.dart';
import 'package:flutter_ecommerce/presentation/shipping_address/bloc/subdistrict/subdistrict_bloc.dart';
import 'package:flutter_ecommerce/presentation/shipping_address/shipping_address_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddAddressPage extends StatefulWidget {
  const AddAddressPage({super.key});

  @override
  State<AddAddressPage> createState() => _AddAddressPageState();
}

class _AddAddressPageState extends State<AddAddressPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController zipCodeController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();

  bool isDefault = false;

  Province selectedProvince = Province(
    provinceId: '1',
    province: 'Bali',
  );

  City selectedCity = City(
    cityId: '1',
    provinceId: '1',
    province: 'Bali',
    type: 'Kabupaten',
    cityName: 'Badung',
    postalCode: '80351',
  );

  SubDistrict selectedSubdistrict = SubDistrict(
    subdistrictId: '1',
    provinceId: '1',
    province: 'Bali',
    cityId: '1',
    city: 'Badung',
    type: 'Kabupaten',
    subdistrictName: 'Kuta',
  );

  @override
  void dispose() {
    nameController.dispose();
    addressController.dispose();
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
    debugPrint(selectedProvince.toString());
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            content(),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: actionButton(),
            ),
          ],
        ),
      ),
    );
  }

  Widget content() {
    return Column(
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
                controller: nameController,
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
                      return CustomDropdown(
                        value: selectedProvince,
                        items: const [],
                        label: 'Provinsi',
                        onChanged: (val) {},
                      );
                    },
                    success: (provinces) {
                      selectedProvince = provinces.first;
                      return CustomDropdown<Province>(
                        value: selectedProvince,
                        items: provinces,
                        label: 'Provinsi',
                        onChanged: (value) {
                          if (value != null) {
                            setState(() {
                              selectedProvince = value;
                              context.read<CityBloc>().add(
                                    CityEvent.getAllByProvinceId(
                                        selectedProvince.provinceId),
                                  );
                            });
                          }
                        },
                      );
                    },
                  );
                },
              ),
              SpaceHeight(16.h),
              BlocBuilder<CityBloc, CityState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return CustomDropdown(
                        value: '-',
                        items: const ['-'],
                        label: 'Kota',
                        onChanged: (value) {
                          if (value != null) {}
                        },
                      );
                    },
                    success: (cities) {
                      selectedCity = cities.first;
                      return CustomDropdown<City>(
                        value: selectedCity,
                        items: cities,
                        label: 'Kota',
                        onChanged: (value) {
                          if (value != null) {
                            setState(() {
                              selectedCity = value;
                              context.read<SubdistrictBloc>().add(
                                    SubdistrictEvent.getAllByCityId(
                                        selectedCity.cityId),
                                  );
                            });
                          }
                        },
                      );
                    },
                  );
                },
              ),
              SpaceHeight(16.h),
              BlocBuilder<SubdistrictBloc, SubdistrictState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return CustomDropdown(
                        value: '-',
                        items: const ['-'],
                        label: 'Kecamatan',
                        onChanged: (value) {
                          if (value != null) {}
                        },
                      );
                    },
                    success: (subdistricts) {
                      selectedSubdistrict = subdistricts.first;
                      return CustomDropdown(
                        value: selectedSubdistrict,
                        items: subdistricts,
                        label: 'Kecamatan',
                        onChanged: (value) {
                          if (value != null) {
                            setState(() {
                              selectedSubdistrict = value;
                            });
                          }
                        },
                      );
                    },
                  );
                },
              ),
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
              ),
              SpaceHeight(70.h),
            ],
          ),
        ),
      ],
    );
  }

  Widget actionButton() {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: ColorName.border,
            width: 2,
          ),
        ),
        color: ColorName.white,
      ),
      child: BlocConsumer<AddressBloc, AddressState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            addError: (error) {
              ShowMessage.error(
                ctx: context,
                message: error,
              );
            },
            addSuccess: (response) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ShippingAddressPage();
                  },
                ),
              );
              
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return Button.filled(
                onPressed: () async {
                  /* get user id */
                  final userId = await AuthLocalDatasource().getUser();

                  context.read<AddressBloc>().add(
                        AddressEvent.addAddress(
                          AddAddressRequestModel(
                            data: Data(
                              name: nameController.text,
                              address:
                                  '${addressController.text}, ${selectedSubdistrict.subdistrictName}, ${selectedCity.cityName}, ${selectedProvince.province} ${zipCodeController.text}',
                              phone: phoneNumberController.text,
                              provId: selectedProvince.provinceId,
                              cityId: selectedCity.cityId,
                              subdistrictId: selectedSubdistrict.subdistrictId,
                              codePos: zipCodeController.text,
                              userId: userId.id.toString(),
                              isDefault: isDefault,
                              provName: selectedProvince.province,
                              cityName: selectedCity.cityName,
                              subdistrictName:
                                  selectedSubdistrict.subdistrictName,
                            ),
                          ),
                        ),
                      );
                },
                label: 'Tambah Alamat',
              );
            },
            addLoading: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          );
        },
      ),
    );
  }
}

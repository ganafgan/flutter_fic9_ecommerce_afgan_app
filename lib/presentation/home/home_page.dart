import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce/common/components/search_input.dart';
import 'package:flutter_ecommerce/common/components/space_height.dart';
import 'package:flutter_ecommerce/common/constants/colors.dart';
import 'package:flutter_ecommerce/common/constants/images.dart';
import 'package:flutter_ecommerce/presentation/home/bloc/products/products_bloc.dart';
import 'package:flutter_ecommerce/presentation/home/widget/category_button.dart';
import 'package:flutter_ecommerce/presentation/home/widget/header_home.dart';
import 'package:flutter_ecommerce/presentation/home/widget/image_slider.dart';
import 'package:flutter_ecommerce/presentation/home/widget/product_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ProductsBloc productsBloc;

  final searchController = TextEditingController();

  final List<String> images = [
    Images.recomendedProductBanner,
    Images.recomendedProductBanner,
    Images.recomendedProductBanner,
  ];

  @override
  void initState() {
    super.initState();
    // cara pertama
    // productsBloc = context.read<ProductsBloc>();

    // cara kedua

    // if (mounted) {
    //   productsBloc = BlocProvider.of<ProductsBloc>(context);
    //   productsBloc.add(const ProductsEvent.getAll());
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SpaceHeight(20.h),
          const HeaderHome(),
          SpaceHeight(16.h),
          SearchInput(
            controller: searchController,
            onChanged: (value) {},
          ),
          SpaceHeight(16.h),
          ImageSlider(
            items: images,
            isRounded: true,
            isAsset: true,
          ),
          SpaceHeight(12.h),
          Text(
            'Kategori',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              color: ColorName.primary,
            ),
          ),
          SpaceHeight(10.h),
          Row(
            children: [
              Flexible(
                child: CategoryButton(
                  imagePath: Images.fashion1,
                  label: 'Pakaian',
                  onPressed: () {},
                ),
              ),
              Flexible(
                child: CategoryButton(
                  imagePath: Images.fashion2,
                  label: 'Pakaian',
                  onPressed: () {},
                ),
              ),
              Flexible(
                child: CategoryButton(
                  imagePath: Images.more,
                  label: 'Pakaian',
                  onPressed: () {},
                ),
              ),
              Flexible(
                child: CategoryButton(
                  imagePath: Images.fashion1,
                  label: 'Pakaian',
                  onPressed: () {},
                ),
              ),
            ],
          ),
          SpaceHeight(16.h),
          Text(
            'Produk',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              color: ColorName.primary,
            ),
          ),
          BlocBuilder<ProductsBloc, ProductsState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                error: (message) {
                  return Center(
                    child: Text(message),
                  );
                },
                success: (data) {
                  return GridView.builder(
                    /* 
                        tambahkan shrinkWrap dan physics
                        untuk running listview builder di dalam listview 
                       */
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 2 / 3,
                    ),
                    itemCount: data.data.length,
                    itemBuilder: (context, index) {
                      return ProductCard(
                        product: data.data[index],
                      );
                    },
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }
}

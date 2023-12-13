import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce/presentation/auth/bloc/login/login_bloc.dart';
import 'package:flutter_ecommerce/presentation/auth/bloc/register/register_bloc.dart';
import 'package:flutter_ecommerce/presentation/auth/splash_page.dart';
import 'package:flutter_ecommerce/presentation/cart/bloc/cart/cart_bloc.dart';
import 'package:flutter_ecommerce/presentation/cart/bloc/cost/cost_bloc.dart';
import 'package:flutter_ecommerce/presentation/cart/bloc/order/order_bloc.dart';
import 'package:flutter_ecommerce/presentation/home/bloc/products/products_bloc.dart';
import 'package:flutter_ecommerce/presentation/payment/bloc/order_detail/order_detail_bloc.dart';
import 'package:flutter_ecommerce/presentation/shipping_address/bloc/address/address_bloc.dart';
import 'package:flutter_ecommerce/presentation/shipping_address/bloc/city/city_bloc.dart';
import 'package:flutter_ecommerce/presentation/shipping_address/bloc/province/province_bloc.dart';
import 'package:flutter_ecommerce/presentation/shipping_address/bloc/subdistrict/subdistrict_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => RegisterBloc(),
            ),
            BlocProvider(
              create: (context) => LoginBloc(),
            ),
            BlocProvider(
              create: (context) => ProductsBloc(),
            ),
            BlocProvider(
              create: (context) => CartBloc(),
            ),
            BlocProvider(
              create: (context) => OrderBloc(),
            ),
            BlocProvider(
              create: (context) => OrderDetailBloc(),
            ),
            BlocProvider(
              create: (context) => ProvinceBloc(),
            ),
            BlocProvider(
              create: (context) => CityBloc(),
            ),
            BlocProvider(
              create: (context) => SubdistrictBloc(),
            ),
            BlocProvider(
              create: (context) => AddressBloc(),
            ),
             BlocProvider(
              create: (context) => CostBloc(),
            ),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            home: child,
          ),
        );
      },
      child: const SplashPage(),
      // child: FutureBuilder<bool>(
      //   future: AuthLocalDatasource().isLogin(),
      //   builder: (context, snapshot) {
      //     if (snapshot.data != null && snapshot.data!) {
      //       return const DashboardPage();
      //     } else {
      //       return const LoginPage();
      //     }
      //   },
      // ),
    );
  }
}

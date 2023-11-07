import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/data/datasource/auth_local_datasource.dart';
import 'package:flutter_ecommerce/presentation/auth/bloc/login/login_bloc.dart';
import 'package:flutter_ecommerce/presentation/auth/bloc/register/register_bloc.dart';
import 'package:flutter_ecommerce/presentation/auth/login_page.dart';
import 'package:flutter_ecommerce/presentation/auth/register_page.dart';
import 'package:flutter_ecommerce/presentation/auth/splash_page.dart';
import 'package:flutter_ecommerce/presentation/home/bloc/products/products_bloc.dart';
import 'package:flutter_ecommerce/presentation/home/dashboard_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

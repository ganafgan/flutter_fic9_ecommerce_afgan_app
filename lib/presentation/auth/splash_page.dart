import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/constants/images.dart';
import 'package:flutter_ecommerce/data/datasource/auth_local_datasource.dart';
import 'package:flutter_ecommerce/presentation/auth/login_page.dart';
import 'package:flutter_ecommerce/presentation/home/dashboard_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    isLogin();
  }

  Future<void> isLogin() async {
    final user = await AuthLocalDatasource().isLogin();

    Future.delayed(
      const Duration(seconds: 3),
      () {
        if (user) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const DashboardPage();
              },
            ),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const LoginPage();
              },
            ),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          Images.logo,
          height: 200.h,
          width: 200.w,
        ),
      ),
    );
  }
}

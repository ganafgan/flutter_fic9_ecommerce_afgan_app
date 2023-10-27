import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/constants/images.dart';
import 'package:flutter_ecommerce/presentation/auth/login_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const LoginPage();
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Future.delayed(
    //   const Duration(seconds: 2),
    //   () {
    //     Navigator.pushReplacement(
    //       context,
    //       MaterialPageRoute(
    //         builder: (context) {
    //           return const LoginPage();
    //         },
    //       ),
    //     );
    //   },
    // );
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

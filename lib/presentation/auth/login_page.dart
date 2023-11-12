import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce/common/components/button.dart';
import 'package:flutter_ecommerce/common/components/custom_text_field.dart';
import 'package:flutter_ecommerce/common/components/show_message.dart';
import 'package:flutter_ecommerce/common/components/space_height.dart';
import 'package:flutter_ecommerce/common/constants/colors.dart';
import 'package:flutter_ecommerce/common/constants/images.dart';
import 'package:flutter_ecommerce/data/datasource/auth_local_datasource.dart';
import 'package:flutter_ecommerce/data/model/requests/login_request_model.dart';
import 'package:flutter_ecommerce/presentation/auth/bloc/login/login_bloc.dart';
import 'package:flutter_ecommerce/presentation/auth/register_page.dart';
import 'package:flutter_ecommerce/presentation/home/dashboard_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emaileController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emaileController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        maintainBottomViewPadding: true,
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
          ),
          children: [
            SpaceHeight(50.h),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 130.w,
              ),
              child: Image.asset(
                Images.logo,
                height: 100.h,
                width: 100.w,
                fit: BoxFit.contain,
              ),
            ),
            SpaceHeight(20.h),
            Text(
              'E-commercer Afgan Taufiq Hidayat',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: ColorName.dark,
              ),
              textAlign: TextAlign.center,
            ),
            const SpaceHeight(8),
            Text(
              'Masuk untuk melanjutkan',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: ColorName.grey,
              ),
              textAlign: TextAlign.center,
            ),
            SpaceHeight(40.h),
            CustomTextField(
              controller: emaileController,
              label: 'Username',
            ),
            SpaceHeight(12.h),
            CustomTextField(
              controller: passwordController,
              label: 'Password',
              obsecureText: true,
            ),
            SpaceHeight(24.h),
            BlocConsumer<LoginBloc, LoginState>(
              listener: (context, state) {
                state.maybeWhen(
                  orElse: () {},
                  success: (data) async {
                    AuthLocalDatasource().saveAuthData(data);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const DashboardPage();
                        },
                      ),
                    );
                    ShowMessage.success(
                      ctx: context,
                      message: 'Login Success',
                    );
                  },
                  error: (message) {
                    ShowMessage.error(
                      ctx: context,
                      message: message,
                    );
                  },
                );
              },
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return Button.filled(
                      onPressed: () {
                        final data = LoginRequestModel(
                          identifier: emaileController.text,
                          password: passwordController.text,
                        );

                        context
                            .read<LoginBloc>()
                            .add(LoginEvent.login(data: data));
                      },
                      label: 'Login',
                    );
                  },
                  loading: () {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                );
              },
            ),
            SpaceHeight(122.h),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const RegisterPage();
                      },
                    ),
                  );
                },
                child: const Text.rich(
                  TextSpan(
                    text: 'Belum punya akun?',
                    children: [
                      TextSpan(
                        text: ' Register',
                        style: TextStyle(
                          color: ColorName.primary,
                        ),
                      ),
                    ],
                  ),
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: ColorName.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

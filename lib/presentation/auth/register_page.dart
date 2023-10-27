import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce/common/components/button.dart';
import 'package:flutter_ecommerce/common/components/custom_text_field.dart';
import 'package:flutter_ecommerce/common/components/space_height.dart';
import 'package:flutter_ecommerce/common/constants/colors.dart';
import 'package:flutter_ecommerce/common/constants/images.dart';
import 'package:flutter_ecommerce/data/model/requests/register_request_model.dart';
import 'package:flutter_ecommerce/presentation/auth/bloc/register/register_bloc.dart';
import 'package:flutter_ecommerce/presentation/auth/login_page.dart';
import 'package:flutter_ecommerce/presentation/home/dashboard_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    nameController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        children: [
          SpaceHeight(80.h),
          Image.asset(
            Images.logo,
            height: 100.h,
            width: 100.w,
            fit: BoxFit.contain,
          ),
          SpaceHeight(20.h),
          Text(
            'Mari mulai',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              color: ColorName.dark,
            ),
            textAlign: TextAlign.center,
          ),
          SpaceHeight(8.h),
          Text(
            'Buat akun baru',
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: ColorName.grey,
            ),
            textAlign: TextAlign.center,
          ),
          SpaceHeight(20.h),
          CustomTextField(
            controller: emailController,
            label: 'Email',
          ),
          SpaceHeight(12.h),
          CustomTextField(
            controller: nameController,
            label: 'Name',
          ),
          SpaceHeight(12.h),
          CustomTextField(
            controller: passwordController,
            label: 'Password',
            obsecureText: true,
          ),
          SpaceHeight(12.h),
          CustomTextField(
            controller: confirmPasswordController,
            label: 'Confirm Password',
            obsecureText: true,
          ),
          SpaceHeight(24.h),
          BlocConsumer<RegisterBloc, RegisterState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                success: (data) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const LoginPage();
                      },
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Register Success'),
                      backgroundColor: Colors.green,
                    ),
                  );
                },
                error: (message) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(message),
                      backgroundColor: Colors.red,
                    ),
                  );
                },
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return Button.filled(
                    onPressed: () {
                      final data = RegisterRequestModel(
                        name: nameController.text,
                        password: passwordController.text,
                        email: emailController.text,
                        username: nameController.text.replaceAll(' ', ''),
                      );
                      context
                          .read<RegisterBloc>()
                          .add(RegisterEvent.register(data: data));
                    },
                    label: 'Daftar',
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
          SpaceHeight(50.h),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Text.rich(
              TextSpan(
                text: 'Sudah punya akun?',
                children: [
                  TextSpan(
                    text: ' Sign in',
                    style: TextStyle(
                      color: ColorName.primary,
                    ),
                  )
                ],
              ),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: ColorName.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

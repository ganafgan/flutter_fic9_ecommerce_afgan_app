import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/components/button.dart';
import 'package:flutter_ecommerce/common/components/dialog_confirmation.dart';
import 'package:flutter_ecommerce/common/constants/colors.dart';
import 'package:flutter_ecommerce/data/datasource/auth_local_datasource.dart';
import 'package:flutter_ecommerce/presentation/auth/login_page.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    void handleLogout() {
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => CustomDialog(
          onCancel: () {
            Navigator.pop(context);
          },
          onOK: () {
            AuthLocalDatasource().removeAuthData();
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) { 
                  return const LoginPage();
                },
              ),
            );
          },
        ),
      );
    }

    return Scaffold(
      backgroundColor: ColorName.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Button.filled(
              // onPressed: () async {
              //   await AuthLocalDatasource().removeAuthData();
              //   Navigator.pushReplacement(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) {
              //         return const LoginPage();
              //       },
              //     ),
              //   );
              // },
              onPressed: handleLogout,
              label: 'Logout',
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter_ecommerce/presentation/home/dashboard_page.dart';

class FailedPage extends StatefulWidget {
  const FailedPage({super.key});

  @override
  State<FailedPage> createState() => _FailedPageState();
}

class _FailedPageState extends State<FailedPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.error,
        animType: AnimType.bottomSlide,
        title: 'Pembayaran Gagal',
        desc: 'Pembayaran Gagal dilakukan',
        btnOkOnPress: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return const DashboardPage();
            },
          ));
        },
      ).show();
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

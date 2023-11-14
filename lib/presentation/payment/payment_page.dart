// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce/common/components/show_message.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:flutter_ecommerce/presentation/payment/bloc/order_detail/order_detail_bloc.dart';
import 'package:flutter_ecommerce/presentation/payment/widget/failed_page.dart';
import 'package:flutter_ecommerce/presentation/payment/widget/sucess_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({
    Key? key,
    required this.invoiceUrl,
    required this.orderId,
  }) : super(key: key);
  final String invoiceUrl;
  final String orderId;

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  WebViewController? controller;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.invoiceUrl));
    const onSec = Duration(seconds: 4);
    timer = Timer.periodic(onSec, (Timer timer) {
      context
          .read<OrderDetailBloc>()
          .add(OrderDetailEvent.getOrderDetail(widget.orderId));
    });
    
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocListener<OrderDetailBloc, OrderDetailState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              error: (error) {
                ShowMessage.error(
                  ctx: context,
                  message: error,
                );
              },
              success: (response) {
                if (response.data.attributes.status == 'packaging') {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const SucessPage();
                      },
                    ),
                  );
                }
                if (response.data.attributes.status == 'failed') {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const FailedPage();
                      },
                    ),
                  );
                }
              },
            );
          },
          child: WebViewWidget(controller: controller!),
        ),
      ),
    );
  }
}

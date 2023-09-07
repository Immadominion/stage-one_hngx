import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stage_one/src/web_view_stack.dart';
import 'package:stage_one/util/color_theme.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewKit extends StatefulWidget {
  const WebViewKit({super.key});

  @override
  State<WebViewKit> createState() => _WebViewKitState();
}

class _WebViewKitState extends State<WebViewKit> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://github.com/immadominion'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Viewing My Github',
            style: TextStyle(
              color: immaBlack,
              fontFamily: 'Monteserrat',
              fontSize: 10.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: immaYellowish,
        body: WebViewStack(controller: controller),
      ),
    );
  }
}

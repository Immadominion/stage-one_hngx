import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stage_one/util/color_theme.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NavigationControls extends StatelessWidget {
  const NavigationControls({required this.controller, super.key});

  final WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: immaBlack,
      iconSize: 20.sp,
      icon: const Icon(Icons.replay),
      onPressed: () {
        controller.reload();
      },
    );
  }
}

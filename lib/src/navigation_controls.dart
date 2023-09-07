import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NavigationControls extends StatelessWidget {
  const NavigationControls({required this.controller, super.key});

  final WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.replay),
      onPressed: () {
        controller.reload();
      },
    );
  }
}

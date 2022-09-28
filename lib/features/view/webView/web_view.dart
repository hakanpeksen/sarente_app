library web_view;

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'web_view_model.dart';

part 'web_view_widget.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({super.key});

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends WebViewModel {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: const Text('Web View')),
          body: Center(
            child: _WebViewWidget(
              url: url,
              controller: controller,
            ),
          )),
    );
  }
}

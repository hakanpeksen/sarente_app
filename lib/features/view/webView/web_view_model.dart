import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'web_view.dart';

abstract class WebViewModel extends State<WebViewPage> {
  final String url = "https://www.crazygames.com/game/ninja-hands";
  final Completer<WebViewController> controller = Completer<WebViewController>();

  @override
  void initState() {
    super.initState();

    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }
}

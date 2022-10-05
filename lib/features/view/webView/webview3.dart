import 'package:easy_web_view2/easy_web_view2.dart';
import 'package:flutter/material.dart';

class WebView3 extends StatefulWidget {
  const WebView3({super.key});

  @override
  State<WebView3> createState() => _WebView3State();
}

class _WebView3State extends State<WebView3> {
  final String initialUrl = "https://cutiepie.gameontech.co.uk/";

  @override
  Widget build(BuildContext context) {
    return EasyWebView(
      onLoaded: () {
        print(' Loaded: $initialUrl');
      },
      src: initialUrl,
      isHtml: false, // Use Html syntax
      isMarkdown: false, // Use markdown syntax
      convertToWidgets: false, // Try to convert to flutter widgets
      // width: 100,
      // height: 100,
    );
  }
}

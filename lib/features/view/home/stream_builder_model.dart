import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import 'stream_builder_widget.dart';

abstract class StreamBuilderModel extends State<StreamBuilderWidget> {
  final controller = StreamController<String>();

  Stream<String> get stream => controller.stream;
  StreamSink<String> get counterSink => controller.sink;

  @override
  void initState() {
    super.initState();

    //  _initFutureForLoop();

    goToWebView();
  }

  @override
  void dispose() {
    super.dispose();
    controller.close();
  }

  _initFutureForLoop() async {
    const String word = 'LOADING';
    String result = '';

    for (int i = 0; i < word.length; i++) {
      await Future.delayed(context.durationNormal);
      result += word[i];
      counterSink.add(result);
    }
    goToWebView();
  }

  void goToWebView() {
    if (mounted) {
      // context.navigateToReset('/webView');
      context.navigateToReset('/webView2');
    }
  }
}

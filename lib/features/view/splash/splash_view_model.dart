import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kartal/kartal.dart';

import '../home/home_view.dart';
import 'splash_view.dart';

abstract class SplashViewModel extends State<SplashView> {
  Timer? _timer;
  static const _splashDuration = Duration(seconds: 3);

  static const String _assetName = 'assets/svg/car.svg';
  final Widget svgIcon = SvgPicture.asset(
    _assetName,
    color: Colors.blue,
    height: 300,
    width: 300,
  );

  @override
  void initState() {
    super.initState();
    _timer = Timer(
      _splashDuration,
      () {
        context.navigateToPage(const HomeView(), type: SlideType.RIGHT);
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }
}

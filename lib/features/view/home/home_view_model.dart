import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import 'home_view.dart';

abstract class HomeViewModel extends State<HomeView> {
  Timer? _timer;
  int _startTimer = 7;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _initTimer();
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  void _initTimer() {
    _timer = Timer.periodic(
      context.durationNormal,
      (timer) => setState(
        () {
          if (_startTimer < 1) {
            isLoading = false;
            timer.cancel();
          } else {
            _startTimer -= 1;
          }
        },
      ),
    );
  }
}

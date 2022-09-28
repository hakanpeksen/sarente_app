import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import 'home_view_model.dart';
import 'stream_builder_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends HomeViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        isLoading == false
            ? const SizedBox.shrink()
            : const Center(
                child: CircularProgressIndicator(),
              ),
        context.emptySizedHeightBoxLow,
        const StreamBuilderWidget()
      ],
    ));
  }
}

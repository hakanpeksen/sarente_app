import 'package:flutter/material.dart';

import 'features/view/home/home_view.dart';
import 'features/view/splash/splash_view.dart';
import 'features/view/webView/web_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '',
      routes: {
        '': (context) => const SplashView(),
        '/home': (context) => const HomeView(),
        '/webView': (context) => const WebViewPage(),
      },
    );
  }
}

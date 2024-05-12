import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

import 'router.dart';

void main() {
  //setPathUrlStrategy();
  setHashUrlStrategy();
  runApp(const CVApp());
}

class CVApp extends StatelessWidget {
  const CVApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Paulo Roberto Cruz França',
      theme: ThemeData(
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}

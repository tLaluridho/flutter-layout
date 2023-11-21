import 'package:flutter_layout/core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_layout/shared/theme.dart';
import 'package:flutter_layout/state_util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: getDefauldTheme(),
      home: const FittedboxView(),
    );
  }
}

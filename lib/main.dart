import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:events_pay_pro/view/splash.dart';
import 'package:grock/grock.dart';

import 'constant/constant.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Bu Bilet',
        navigatorKey: Grock.navigationKey,
        theme: ThemeData(
          scaffoldBackgroundColor: Constant.body,
          primarySwatch: Colors.blue,
        ),
        home: const Splash());
  }
}

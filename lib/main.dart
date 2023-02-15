import 'package:events_pay_pro/view/login_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Event Pay';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: LoginView(),
    );
  }
}

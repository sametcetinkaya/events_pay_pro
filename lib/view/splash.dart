import 'package:flutter/material.dart';
import 'package:grock/grock.dart';
import '../components/bottomNavigationBar.dart';
import '../constant/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), (){
      Grock.toRemove(const CustomBottomNavigation());

    super.initState();
  });}

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Constant.dark,
      body: Center(
        child: Text(
          'Xbilet',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50,
              color: Constant.white,
              fontStyle: FontStyle.normal),
        ),
      ),
    );
  }
}

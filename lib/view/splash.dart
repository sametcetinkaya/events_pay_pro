import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

import '../constant/constant.dart';
import 'home.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});


  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), (){
      Grock.toRemove(Home());
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.dark,
      body: Center(
        child: SvgPicture.asset('images/logo-beyaz.svg'),
      ),
    );
  }
}

import 'package:events_pay_pro/components/search.dart';
import 'package:events_pay_pro/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../components/custom_appbar.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
       
      body: Stack(
        children: [
          Container(
            height: 35,
            color: Constant.dark,
          ),
          Container(
            height: 180,
             margin: const EdgeInsets.only(top: 34.0),
            child: Image.asset('images/slider.jpg' , fit: BoxFit.cover),
            
          ),
          Container(
            margin: const EdgeInsets.only(top: 0.0),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: const Search(),
          ),
          
        ],
      ),
    );
  }
}

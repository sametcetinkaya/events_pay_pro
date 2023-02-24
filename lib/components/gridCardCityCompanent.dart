import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

import '../constant/constant.dart';
import '../model/city.dart';

class GridCardCityComponent extends StatelessWidget {
  City city;
  GridCardCityComponent({super.key, required this.city});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
              Text(city.cityPlate, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Constant.text),),
              const SizedBox(height: 10,),
              Text(city.city, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Constant.text),),
        ],
    ),);
  }
}
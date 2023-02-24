import 'package:flutter/material.dart';

import '../constant/constant.dart';

class CitySearch extends StatelessWidget {
  const CitySearch({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField( 
        style: const TextStyle(color: Constant.text),
        decoration: InputDecoration(
          filled: true,
          fillColor: Constant.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none
          ),
          hintText: "Şehir arayın",
          suffixIcon: const Icon(Icons.search),
          iconColor: Constant.text

        ),
      );
  }
}
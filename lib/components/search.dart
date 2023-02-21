import 'package:flutter/material.dart';

import '../constant/constant.dart';

class Search extends StatelessWidget {
  const Search({super.key});

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
          hintText: "Etkinlik, sanatçı veya mekan arayın",
          suffixIcon: const Icon(Icons.search),
          iconColor: Constant.text

        ),
      );
  }
}
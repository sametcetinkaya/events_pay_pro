import 'package:flutter/material.dart';

import '../constant/constant.dart';

class Search extends StatelessWidget {
  const Search({super.key, this.hintTitle, required this.onPressed});
  final String? hintTitle;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Constant.text),
      decoration: InputDecoration(
          filled: true,
          fillColor: Constant.white,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none),
          hintText: '$hintTitle',
          suffixIcon: const Icon(Icons.search),
          iconColor: Constant.text),
    );
  }
}

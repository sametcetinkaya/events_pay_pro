// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

import '../constant/constant.dart';
import '../model/category.dart';

class CategoryComponent extends StatelessWidget {
  CategoryModel category;
  CategoryComponent({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
                margin: EdgeInsets.only(right: 5),
                child: Image.asset(
                  category.image,
                  width: 30,
                  height: 30,
                  fit: BoxFit.cover,
                )
              ),
            Text(
              category.name.toUpperCase(),
              style: const TextStyle(
                  color: Constant.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 11),
            )
          ],
        ),
      ),
    );
  }
}

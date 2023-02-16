// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:events_pay_pro/components/custom_appbar.dart';
import 'package:events_pay_pro/components/search.dart';

import '../components/categoriesComponent.dart';
import '../constant/constant.dart';
import '../model/categories.dart';
import '../riverpod/home_riverpod.dart';

// ignore: non_constant_identifier_names
final homeriverpod = ChangeNotifierProvider((ref) => HomeRiverpod());
class Home extends ConsumerStatefulWidget {
  
  const Home({super.key});

  
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  @override
  Widget build(BuildContext context) {
    var watch = ref.watch(homeriverpod);
    var read = ref.read(homeriverpod);
    return Scaffold(
      appBar: CustomAppBar(),
      body: Stack(
        children: [
          Container(
            height: 35,
            color: Constant.dark,
          ),
          sliderContent(),
          searchContent(),
          categoryContent(read.categoryArray)
        ],
      ),
    );
  }

  Container categoryContent(CategoriesModel categoryModel) {
    return Container(
          margin: const EdgeInsets.symmetric(vertical: 190.0),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 50.0,
          child: SizedBox(
            height: 75,
            child: ListView.separated(
              
              separatorBuilder: (context , index) => const SizedBox(
                width: 8,
              ),
              
              itemCount: categoryModel.categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context ,index){
                return CategoryComponent(category: categoryModel.categories[index]);
              },
            ),
          )
        );
  }

  Container searchContent() {
    return Container(
          margin: const EdgeInsets.only(top: 0.0),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: const Search(),
        );
  }

  Container sliderContent() {
    return Container(
          height: 180,
          margin: const EdgeInsets.only(top: 34.0),
          child: Image.asset('images/slider.jpg', fit: BoxFit.cover),
        );
  }
}

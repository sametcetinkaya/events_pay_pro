// ignore_for_file: unused_local_variable

import 'package:events_pay_pro/components/gridCardComponent.dart';
import 'package:events_pay_pro/model/events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:events_pay_pro/components/custom_appbar.dart';
import 'package:events_pay_pro/components/search.dart';
import 'package:events_pay_pro/components/drawer.dart';

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
    final List<Map> myProducts =
        List.generate(1000, (index) => {"id": index, "name": 'product $index'})
            .toList();
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
          categoryContent(read.categoryArray),
          eventsContent(read.eventsArray)
        ],
      ),
      drawer: const DrawerComponent(),
    );
  }

  Container eventsContent(Events eventArray) {
    return Container(
      margin: const EdgeInsets.only(top: 250),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 15),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(eventArray.title,
                          style: const TextStyle(color: Constant.dark)),
                      Row(
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Constant.white,
                                ),
                                child: const Icon(Icons.tune, size: 20),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 5),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Constant.white,
                                ),
                                child: Row(
                                  children: const [
                                    Icon(Icons.view_agenda,
                                        color: Colors.grey, size: 20),
                                    SizedBox(width: 5),
                                    Icon(Icons.window, size: 20)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      )
                    ])
              ],
            ),
          ),
          Flexible(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 250,
                      childAspectRatio: .685,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: eventArray.events.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        
                      },
                      child: GridCardComponent(
                        event: eventArray.events[index],
                      ),
                    );
                  })),
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
            separatorBuilder: (context, index) => const SizedBox(
              width: 8,
            ),
            itemCount: categoryModel.categories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CategoryComponent(
                  category: categoryModel.categories[index]);
            },
          ),
        ));
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

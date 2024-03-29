// ignore_for_file: unused_local_variable

import 'package:events_pay_pro/components/bottomNavigationBar.dart';
import 'package:events_pay_pro/components/gridCardComponent.dart';
import 'package:events_pay_pro/components/listCardComponent.dart';
import 'package:events_pay_pro/model/events.dart';
import 'package:events_pay_pro/view/eventDetail.dart';
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
  bool _isShow = false;
  bool _isChecked = true;

  String filter = '';
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
          categoryContent(read.categoryArray),
          eventsContent(read.eventsArray),
          listEventContent(read.eventsArray)
        ],
      ),
      drawer: const DrawerComponent(),
    );
  }

  Visibility listEventContent(Events eventArray) {
    return Visibility(
        visible: _isShow,
        child: Positioned(
          top: MediaQuery.of(context).size.height * 0.17,
          right: MediaQuery.of(context).size.width * 0.03,
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Tarihe Göre',
                      style: TextStyle(
                          color: Constant.text, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 10),
                    Text('Fiyata Göre',
                        style: TextStyle(
                            color: Constant.text, fontWeight: FontWeight.w500)),
                    SizedBox(height: 10),
                    Text('Kampyanlara',
                        style: TextStyle(
                            color: Constant.text, fontWeight: FontWeight.w500)),
                  ])),
        ));
  }

  Container eventsContent(Events eventArray) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 270),
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
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Constant.white,
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _isShow = !_isShow;
                                    });
                                  },
                                  icon: const Icon(Icons.tune,
                                      color: Constant.dark),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Constant.white,
                                ),
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _isChecked = false;
                                        });
                                      },
                                      icon: Icon(Icons.view_agenda,
                                          color: _isChecked
                                              ? Colors.grey
                                              : Colors.black,
                                          size: 20),
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          setState(() {
                                            _isChecked = true;
                                          });
                                        },
                                        icon: Icon(Icons.window,
                                            color: _isChecked
                                                ? Colors.black
                                                : Colors.grey,
                                            size: 20)),
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
            child: _isChecked
                ? GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 250,
                            childAspectRatio: .660,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 20),
                    itemCount: eventArray.events.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EventDetail(
                                      eventData: eventArray.events[index])));
                        },
                        child: GridCardComponent(
                          event: eventArray.events[index],
                        ),
                      );
                    })
                : ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 8,
                    ),
                    itemCount: eventArray.events.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EventDetail(
                                      eventData: eventArray.events[index])));
                        },
                        child: ListCardComponent(
                          event: eventArray.events[index],
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }

  Container categoryContent(CategoriesModel categoryModel) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 220.0),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 50.0,
        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(
            width: 8,
          ),
          itemCount: categoryModel.categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CategoryComponent(category: categoryModel.categories[index]);
          },
        ));
  }

  Container searchContent() {
    return Container(
      margin: const EdgeInsets.only(top: 0.0),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Search(
        hintTitle: 'Ara..',
        onPressed: () {},
      ),
    );
  }

  Container sliderContent() {
    return Container(
      width: double.infinity,
      height: 210,
      margin: const EdgeInsets.only(top: 34.0),
      child: Image.asset('images/buyuk-ev-ablukada-akustik-konseri-49150.png',
          fit: BoxFit.cover),
    );
  }
}

import 'package:events_pay_pro/components/search.dart';
import 'package:events_pay_pro/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//import '../components/citySearch.dart';
import '../components/custom_appbar.dart';
import '../components/gridCardCityCompanent.dart';
import '../model/cities.dart';
import '../riverpod/home_riverpod.dart';

final homeriverpod = ChangeNotifierProvider((ref) => HomeRiverpod());

class LocationView extends ConsumerStatefulWidget {
  const LocationView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LocationViewState();
}

class _LocationViewState extends ConsumerState<LocationView> {
  @override
  Widget build(BuildContext context) {
    var read = ref.read(homeriverpod);

    return Scaffold(
      backgroundColor: Constant.dark,
      body: Stack(
        children: [
          eventsContent(read.cityArray),
          searchContent(),
        ],
      ),
    );
  }

  Container eventsContent(Cities cityArray) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 65),
      decoration: const BoxDecoration(color: Constant.dark),
      //   margin: const EdgeInsets.only(t),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Flexible(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 100,
                      childAspectRatio: .90,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8),
                  itemCount: cityArray.cities.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: GridCardCityComponent(
                        city: cityArray.cities[index],
                      ),
                    );
                  })),
        ],
      ),
    );
  }

  Container searchContent() {
    return Container(
      decoration: const BoxDecoration(color: Constant.dark),
      margin: const EdgeInsets.only(top: 60.0),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Search(
        hintTitle: 'Şehir ara..',
        onPressed: () {},
      ),
    );
  }
}

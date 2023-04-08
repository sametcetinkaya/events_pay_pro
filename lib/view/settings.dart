import 'package:events_pay_pro/view/favorite.dart';
import 'package:events_pay_pro/view/profile_edit.dart';
import 'package:events_pay_pro/view/tickets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/drawer.dart';
import '../constant/constant.dart';
import 'location.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 1,
        child: Scaffold(
          key: _scaffoldKey,
          drawer: const DrawerComponent(),
          appBar: AppBar(
            backgroundColor: Constant.dark,
            centerTitle: true,
            title: SvgPicture.asset(
              'images/logo-beyaz.svg',
              height: 30,
            ),
            leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  _scaffoldKey.currentState?.openDrawer();
                }),
            actions: [
              IconButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LocationView())),
                  icon: const Icon(Icons.location_on)),
            ],
            automaticallyImplyLeading: true,
            bottom: const TabBar(indicatorColor: Constant.white, tabs: [
              Tab(
                icon: Icon(Icons.person_pin_outlined),
                text: 'Profil Düzenle',
              ),
            ]),
          ),
          body: const TabBarView(children: [
            ProfileEditView(),
          ]),
        ));
  }
}

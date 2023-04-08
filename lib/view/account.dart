import 'package:events_pay_pro/components/bottomNavigationBar.dart';
import 'package:events_pay_pro/components/custom_appbar.dart';
import 'package:events_pay_pro/components/drawer.dart';
import 'package:events_pay_pro/view/login.dart';
import 'package:events_pay_pro/view/profile_edit.dart';
import 'package:events_pay_pro/view/register.dart';
import 'package:events_pay_pro/view/settings.dart';
import 'package:events_pay_pro/view/ticketSettings.dart';
import 'package:events_pay_pro/view/tickets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant/constant.dart';
import 'location.dart';

class AccountView extends StatefulWidget {
  const AccountView({super.key});

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  @override
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
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
            bottom: TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Constant.white,
                tabs: [
                  Tab(
                    icon: Icon(Icons.shopping_basket_outlined),
                    text: 'Biletlerim',
                  ),
                  Tab(
                    icon: Icon(Icons.settings),
                    text: 'Ayarlar',
                  )
                ]),
          ),
          body: TabBarView(children: [
            TicketsView(),
            TicketSettingsView(),
          ]),
        ));
  }
}

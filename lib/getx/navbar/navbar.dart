import 'package:events_pay_pro/view/account.dart';
import 'package:events_pay_pro/view/favorite.dart';
import 'package:events_pay_pro/view/settings.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/constant.dart';
import '../../view/home.dart';
import '../controller/controller.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final controller = Get.put(NavBarController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavBarController>(builder: (context) {
      return Scaffold(
        body: IndexedStack(
          index: controller.tabIndex,
          children: const [
            Home(),
            AccountView(),
            FavoriteView(),
            SettingsView()
          ],
        ),
        bottomNavigationBar: GNav(
          padding: const EdgeInsets.all(18),
          backgroundColor: Constant.dark,
          color: Constant.white,
          activeColor: Constant.white,
          tabBackgroundColor: Constant.gray,
          gap: 6,
          selectedIndex: controller.tabIndex,
          onTabChange: controller.changeTabIndex,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Anasayfa',
            ),
            GButton(
              icon: Icons.shopping_basket_outlined,
              text: 'Biletlerim',
            ),
            GButton(
              icon: Icons.favorite_border,
              text: 'Favoriler',
            ),
            GButton(
              icon: Icons.settings,
              text: 'Ayarlar',
            ),
          ],
        ),
      );
    });
  }
}

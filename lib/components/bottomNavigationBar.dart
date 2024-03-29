import 'package:events_pay_pro/constant/constant.dart';
import 'package:events_pay_pro/view/account.dart';
import 'package:events_pay_pro/view/favorite.dart';
import 'package:events_pay_pro/view/settings.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'package:events_pay_pro/view/home.dart';

class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({super.key});

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const AccountView(),
    const FavoriteView(),
    const SettingsView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: Container(
        color: Constant.dark,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            padding: const EdgeInsets.all(18),
            backgroundColor: Constant.dark,
            color: Constant.white,
            activeColor: Constant.white,
            tabBackgroundColor: Constant.gray,
            gap: 6,
            selectedIndex: _selectedIndex,
            onTabChange: _onItemTapped,
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
        ),
      ),
    );
  }
}

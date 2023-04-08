import 'package:events_pay_pro/view/account.dart';
import 'package:events_pay_pro/view/favorite.dart';
import 'package:events_pay_pro/view/home.dart';
import 'package:events_pay_pro/view/settings.dart';
import 'package:events_pay_pro/view/tickets.dart';
import 'package:get/get.dart';

import '../navbar/navbar.dart';

class AppPage {
  static List<GetPage> routes = [
    GetPage(name: navbar, page: () => const NavBar()),
    GetPage(name: home, page: () => const Home()),
    GetPage(name: profileEdit, page: () => const AccountView()),
    GetPage(name: tickets, page: () => const TicketsView()),
    GetPage(name: settings, page: () => const SettingsView()),
    GetPage(name: favorite, page: () => const FavoriteView()),
  ];
  static getnavbar() => navbar;
  static gethome() => home;
  static getprofileEdit() => profileEdit;
  static gettickets() => tickets;
  static getsettings() => settings;
  static getfavorite() => favorite;
  //
  static String navbar = "/";
  static String home = "/home";
  static String profileEdit = "/profile_edit";
  static String tickets = "/tickets";
  static String settings = "/settings";
  static String favorite = "/favorite";
}

import 'package:events_pay_pro/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 300,
      child: Stack(
        // Important: Remove any padding from the ListView.
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(10, 30, 0, 0),
            height: 140,
            color: Constant.dark,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  'images/logo-beyaz.svg',
                  height: 30,
                ),
                IconButton(
                  onPressed: (){
                    Scaffold.of(context).closeDrawer();
                  },
                  icon: const Icon(Icons.close_rounded,color:Constant.green)
                )
              ],
            ),
          ),
          Container(
            height: 105,
            margin: const EdgeInsets.only(top: 90),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 100,
                  width: 120,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5.0,
                          spreadRadius: 0.5,
                        )
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.person_add,
                        color: Constant.text,
                        size: 30,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Giriş Yap',
                        style: TextStyle(color: Constant.text),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 120,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5.0,
                          spreadRadius: 0.5,
                        )
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.logout,
                        color: Constant.text,
                        size: 30,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Üye Ol',
                        style: TextStyle(color: Constant.text, fontSize: 15),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 170),
            child: ListView(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 20, 0, 0),
                  child: const Text('Trendler',
                      style: TextStyle(
                          color: Constant.text, fontWeight: FontWeight.bold)),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 20, 0, 0),
                  child: const Text('Konser',
                      style: TextStyle(
                          color: Constant.text, fontWeight: FontWeight.bold)),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 20, 0, 0),
                  child: const Text('Tiyatro',
                      style: TextStyle(
                          color: Constant.text, fontWeight: FontWeight.bold)),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 20, 0, 0),
                  child: const Text('Festival',
                      style: TextStyle(
                          color: Constant.text, fontWeight: FontWeight.bold)),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 20, 0, 0),
                  child: const Text('Çocuk Aktiviteleri',
                      style: TextStyle(
                          color: Constant.text, fontWeight: FontWeight.bold)),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 20, 0, 0),
                  child: const Text('Blog',
                      style: TextStyle(
                          color: Constant.text, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

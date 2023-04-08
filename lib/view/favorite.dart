import 'package:flutter/material.dart';
import '../components/custom_appbar.dart';
import '../components/drawer.dart';
import '../constant/constant.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constant.body,
        drawer: const DrawerComponent(),
        appBar: CustomAppBar(),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Kayıtlı Favori Bulunamadı",
                  style: TextStyle(fontSize: 16),
                )
              ],
            )
          ],
        ));
  }
}
